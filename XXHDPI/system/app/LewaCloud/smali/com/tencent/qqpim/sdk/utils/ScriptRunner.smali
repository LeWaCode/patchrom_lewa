.class public final Lcom/tencent/qqpim/sdk/utils/ScriptRunner;
.super Ljava/lang/Object;


# static fields
.field public static final CAT:Ljava/lang/String; = "cat"

.field public static final CD:Ljava/lang/String; = "cd"

.field public static final CHMOD:Ljava/lang/String; = "chmod"

.field public static final KILL:Ljava/lang/String; = "kill"

.field public static final LS:Ljava/lang/String; = "ls"

.field public static final MV:Ljava/lang/String; = "mv"

.field public static final PS:Ljava/lang/String; = "ps"

.field public static final RM:Ljava/lang/String; = "rm"

.field public static final WGET:Ljava/lang/String; = "./wget"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exec(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    return-void
.end method

.method public static varargs exec(Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, p1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "UTF-8"

    invoke-direct {v6, v4, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static varargs exec([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/tencent/qqpim/sdk/utils/ScriptRunner;->exec(Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
