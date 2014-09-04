.class public Llewa/os/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# static fields
.field public static sLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    :try_start_0
    const-string v1, "lewa_shell"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    const/4 v1, 0x1

    sput-boolean v1, Llewa/os/Shell;->sLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 10
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 11
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x0

    sput-boolean v1, Llewa/os/Shell;->sLoaded:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chmod(Ljava/lang/String;I)Z
    .locals 1
    .parameter "path"
    .parameter "mode"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Llewa/os/Shell;->native_chmod(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public static chmodRecursive(Ljava/lang/String;I)Z
    .locals 1
    .parameter "path"
    .parameter "mode"

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Llewa/os/Shell;->native_chmod(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public static chown(Ljava/lang/String;II)Z
    .locals 1
    .parameter "path"
    .parameter "uid"
    .parameter "gid"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Llewa/os/Shell;->native_chown(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method public static chownRecursive(Ljava/lang/String;II)Z
    .locals 1
    .parameter "path"
    .parameter "uid"
    .parameter "gid"

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Llewa/os/Shell;->native_chown(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 30
    invoke-static {p0, p1}, Llewa/os/Shell;->native_copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static link(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 24
    invoke-static {p0, p1}, Llewa/os/Shell;->native_link(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 15
    invoke-static {p0}, Llewa/os/Shell;->native_mkdirs(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/lang/String;I)Z
    .locals 2
    .parameter "path"
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-static {p0}, Llewa/os/Shell;->native_mkdirs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1, v0}, Llewa/os/Shell;->native_chmod(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 27
    invoke-static {p0, p1}, Llewa/os/Shell;->native_move(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native native_chmod(Ljava/lang/String;IZ)Z
.end method

.method private static native native_chown(Ljava/lang/String;IIZ)Z
.end method

.method private static native native_copy(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native native_link(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native native_mkdirs(Ljava/lang/String;)Z
.end method

.method private static native native_move(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native native_remove(Ljava/lang/String;)Z
.end method

.method private static native native_run(Ljava/lang/String;)Z
.end method

.method private static native native_run_shell(Ljava/lang/String;)Z
.end method

.method private static native native_write(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static remove(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 21
    invoke-static {p0}, Llewa/os/Shell;->native_remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static run(Ljava/lang/String;)Z
    .locals 1
    .parameter "cmd"

    .prologue
    .line 45
    invoke-static {p0}, Llewa/os/Shell;->native_run(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static runShell(Ljava/lang/String;)Z
    .locals 1
    .parameter "cmd"

    .prologue
    .line 48
    invoke-static {p0}, Llewa/os/Shell;->native_run_shell(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "path"
    .parameter "str"

    .prologue
    .line 51
    invoke-static {p0, p1}, Llewa/os/Shell;->native_write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
