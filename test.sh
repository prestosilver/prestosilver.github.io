#!/usr/bin/fish
echo "export const themes = {"
for theme in $(mondo -l theme)
    echo "  '$theme': {"

    for prop in fg bg act1 act2 act3 ina1 ina2 ina3 wall
        set val $(mondo -c $prop $theme)
        echo "    '$prop': '$val',"
    end
    
    echo "  },"
end
echo "  };"
