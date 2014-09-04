.class public Llewa/os/SuExecuter;
.super Ljava/lang/Object;
.source "SuExecuter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/os/SuExecuter$CommandResult;
    }
.end annotation


# static fields
.field private static final CONFIG_SU_BINARY:Ljava/lang/String; = "su0"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SuExecuter"

.field private static final UTF_8_CODE:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Llewa/os/SuExecuter;->UTF_8_CODE:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static runCommandForResult(Ljava/lang/String;Z)Llewa/os/SuExecuter$CommandResult;
    .locals 8
    .parameter "command"
    .parameter "root"

    .prologue
    .line 33
    const/4 v3, 0x0

    .line 34
    .local v3, process:Ljava/lang/Process;
    const/4 v1, 0x0

    .line 35
    .local v1, os:Ljava/io/DataOutputStream;
    new-instance v4, Llewa/os/SuExecuter$CommandResult;

    invoke-direct {v4}, Llewa/os/SuExecuter$CommandResult;-><init>()V

    .line 39
    .local v4, ret:Llewa/os/SuExecuter$CommandResult;
    if-eqz p1, :cond_0

    .line 40
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "su0"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 41
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v1           #os:Ljava/io/DataOutputStream;
    .local v2, os:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 43
    const-string v5, "exit\n"

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 49
    .end local v2           #os:Ljava/io/DataOutputStream;
    .restart local v1       #os:Ljava/io/DataOutputStream;
    :goto_0
    :try_start_2
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    sget-object v7, Llewa/os/SuExecuter;->UTF_8_CODE:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v5}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Llewa/os/SuExecuter$CommandResult;->result:Ljava/lang/String;

    .line 51
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    sget-object v7, Llewa/os/SuExecuter;->UTF_8_CODE:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v5}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Llewa/os/SuExecuter$CommandResult;->error:Ljava/lang/String;

    .line 53
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v4, Llewa/os/SuExecuter$CommandResult;->success:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 62
    :goto_2
    return-object v4

    .line 47
    :cond_0
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    goto :goto_0

    .line 53
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v5, ""

    iput-object v5, v4, Llewa/os/SuExecuter$CommandResult;->result:Ljava/lang/String;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Llewa/os/SuExecuter$CommandResult;->error:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 60
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .end local v1           #os:Ljava/io/DataOutputStream;
    .restart local v2       #os:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #os:Ljava/io/DataOutputStream;
    .restart local v1       #os:Ljava/io/DataOutputStream;
    goto :goto_4

    .line 55
    .end local v1           #os:Ljava/io/DataOutputStream;
    .restart local v2       #os:Ljava/io/DataOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #os:Ljava/io/DataOutputStream;
    .restart local v1       #os:Ljava/io/DataOutputStream;
    goto :goto_3
.end method
