SET SERVEROUTPUT ON

CREATE VIEW MUSIC_SERVICE AS
    SELECT u.first_name,
    u.second_name AS Last_name,
    u.login as Nickname,
    u.email AS EMAIL,
    g.genre as Music_Type,
    c.name_of_song as Composition_name,
    c.duration_of_composition AS LENGTH,
    c.count_of_likes AS Composition_Likes,
    c.count_of_listening AS LISTEN,
    cr.review AS Comments_Track,
    us.current_playlist AS Current_listening,
    us.stopping_time AS STOPPED_TIME
    
    FROM EXDATA ex
        JOIN COMPOSITION c ON ex.COMPOSITION_NAME = c.NAME_OF_SONG
        JOIN composition_review cr ON ex.COMMENTS_TRACK = cr.review        
        JOIN genre g ON ex.MUSIC_TYPE = g.genre
        JOIN user_state us on ex.STOPPED_TIME = us.STOPPING_TIME
        JOIN users u on ex.NICKNAME = u.LOGIN;    
     
    
    
SET SERVEROUTPUT OFF
    