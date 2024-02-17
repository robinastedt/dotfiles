# .profile

:"${XDG_CONFIG_HOME:=${HOME}/.config}"
:"${XDG_CACHE_HOME:=${HOME}/.cache}"
:"${XDG_DATA_HOME:=${HOME}/.local/share}"
:"${XDG_STATE_HOME:=${HOME}/.local/state}"

export XDG_CONFIG_HOME
export XDG_CACHE_HOME
export XDG_DATA_HOME
export XDG_STATE_HOME

for file in "${XDG_CONFIG_HOME}/profile.d/*.sh"
do
    source $file
done
