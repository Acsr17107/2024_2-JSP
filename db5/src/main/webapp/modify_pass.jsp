<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>�Խù� ����</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h3 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        input[type="password"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .error {
            color: red;
            text-align: center;
            margin-top: 10px;
        }

        .message {
            text-align: center;
            font-size: 14px;
            margin-top: 20px;
        }

        .message a {
            color: #4CAF50;
            text-decoration: none;
        }

        .message a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="container">
        <h3>�Խù� ����</h3>

        <%
            String num = request.getParameter("num");
            String enteredPassword = request.getParameter("password"); // ��й�ȣ
            boolean isPasswordCorrect = false;

            String dbURL = "jdbc:mysql://localhost:3306/test";
            String dbUser = "root";
            String dbPassword = "dongyang";
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;

            // ��й�ȣ Ȯ��
            if (enteredPassword != null && !enteredPassword.isEmpty()) {
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                    String sql = "SELECT pass FROM tblboard WHERE num = ?";
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setInt(1, Integer.parseInt(num));
                    rs = pstmt.executeQuery();

                    if (rs.next()) {
                        String dbPasswordDB = rs.getString("pass");
                        if (dbPasswordDB.equals(enteredPassword)) {
                            isPasswordCorrect = true;
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    try {
                        if (rs != null) rs.close();
                        if (pstmt != null) pstmt.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }

            if (isPasswordCorrect) {
                // ��й�ȣ�� ������ ���� �������� �̵�
                response.sendRedirect("update_board.jsp?num=" + num);
            } else if (enteredPassword != null && !enteredPassword.isEmpty()) {
                // ��й�ȣ�� Ʋ���� ���� �޽��� ���
                out.println("<p class=\"error\">��й�ȣ�� Ʋ���ϴ�. �ٽ� �õ����ּ���.</p>");
            }
        %>

        <!-- ��й�ȣ �Է� �� -->
        <form action="modify_pass.jsp" method="post">
            <input type="hidden" name="num" value="<%= num %>">
            <div class="form-group">
                <input type="password" name="password" placeholder="��й�ȣ" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Ȯ��">
            </div>
        </form>

        <div class="message">
            <p><a href="listboard.jsp">�Խ������� ���ư���</a></p>
        </div>
    </div>

</body>
</html>
