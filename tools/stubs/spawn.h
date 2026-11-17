#pragma once
#include <sys/types.h>
typedef struct { void *opaque[8]; } posix_spawnattr_t;
typedef struct { void *opaque[8]; } posix_spawn_file_actions_t;
int posix_spawn(pid_t *pid, const char *path, const posix_spawn_file_actions_t *fa,
                const posix_spawnattr_t *attr, char *const argv[], char *const envp[]);
