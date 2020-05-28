SET SERVEROUTPUT ON;

WITH t AS (
    SELECT 'album' AS tablename, COUNT(*) data_num
    FROM ALBUM GROUP BY 'album'
    
    UNION ALL
    
    SELECT 'albums_review' AS, COUNT(*) AS data_num
    FROM  ALBUMS_REVIEW GROUP BY 'albums_review'
    
    UNION ALL
    
    SELECT 'composition' AS, COUNT(*) AS data_num
    FROM  composition GROUP BY 'composition'
    
    UNION ALL
        
    SELECT 'composition_review' AS, COUNT(*) AS data_num
    FROM  composition_review GROUP BY 'composition_review'
    
    UNION ALL    
    
    SELECT 'genre' AS, COUNT(*) AS data_num
    FROM  genre GROUP BY 'genre'
    
    UNION ALL
    
    SELECT 'playlist' AS, COUNT(*) AS data_num
    FROM  playlist GROUP BY 'playlist'
    
    UNION ALL    
        
    SELECT 'playlist_contain' AS, COUNT(*) AS data_num
    FROM  playlist_contain GROUP BY 'playlist_contain'
    
    UNION ALL
            
    SELECT 'story_of_listening' AS, COUNT(*) AS data_num
    FROM  story_of_listening GROUP BY 'story_of_listening'
    
    UNION ALL
                
    SELECT 'user_playlist' AS, COUNT(*) AS data_num
    FROM  user_playlist GROUP BY 'user_playlist'
    
    UNION ALL
                    
    SELECT 'user_state' AS, COUNT(*) AS data_num
    FROM  user_state GROUP BY 'user_state'
    
    UNION ALL
                        
    SELECT 'users' AS, COUNT(*) AS data_num
    FROM  users GROUP BY 'users'
)
SELECT t.tablename || ' - number of values: ' || t.data_num AS tables
from t;

SET SERVEROUTPUT OFF;