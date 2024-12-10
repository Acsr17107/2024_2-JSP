<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>게시물 수정</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        input[type="text"], textarea, input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h3>게시물 수정</h3>

    <%
        String num = request.getParameter("num");  // 게시물 번호
        String title = "";
        String contents = "";

        // DB 연결 변수
        String dbURL = "jdbc:mysql://localhost:3306/test";
        String dbUser = "root";
        String dbPassword = "dongyang";
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            // DB 연결
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // 기존 게시물 데이터 가져오기
            String sql = "SELECT title, contents FROM tblboard WHERE num = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, Integer.parseInt(num));
            rs = pstmt.executeQuery();

            if (rs.next()) {
                title = rs.getString("title");
                contents = rs.getString("contents");
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
    %>

    <!-- 수정 폼 -->
    <form action="update_board.jsp" method="post">
        <input type="hidden" name="num" value="<%= num %>">
        <label for="title">제목:</label>
        <input type="text" name="title" id="title" value="<%= title %>" required>

        <label for="contents">내용:</label>
        <textarea name="contents" id="contents" rows="10" required><%= contents %></textarea>

        <input type="submit" value="수정 완료">
    </form>

    <%
        // 수정 후 데이터베이스에 업데이트 처리
        if (request.getParameter("title") != null && request.getParameter("contents") != null) {
            String newTitle = request.getParameter("title");
            String newContents = request.getParameter("contents");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                String updateSQL = "UPDATE tblboard SET title = ?, contents = ? WHERE num = ?";
                pstmt = conn.prepareStatement(updateSQL);
                pstmt.setString(1, newTitle);
                pstmt.setString(2, newContents);
                pstmt.setInt(3, Integer.parseInt(num));

                pstmt.executeUpdate();
                
                // 수정 후 게시판으로 리디렉션
                response.sendRedirect("listboard.jsp");
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    if (pstmt != null) pstmt.close();
                    if (conn != null) conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    %>

</body>
</html>
