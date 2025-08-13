if status is-interactive
    # Interactive shell commands
end

# Download YouTube audio: ym-audio <url>
function ym-audio
    yt-dlp -f 'ba[ext=opus]/bestaudio' --extract-audio --user-agent  "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36" $argv
end

# Add ~/Code/Scripts/battery_logger to PATH
set -U fish_user_paths $fish_user_paths /home/bilal/Code/Scripts/battery_logger


# YouTube Music Playlist to file: ym-plfile
function ym-plfile
    yt-dlp --flat-playlist -g "https://music.youtube.com/playlist?list=PLHHQWY4SFLjM2lbaOxyWKARymvGAwnoe_" > link.txt
end

# Git dotfiles alias
function config
    /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $argv
end
