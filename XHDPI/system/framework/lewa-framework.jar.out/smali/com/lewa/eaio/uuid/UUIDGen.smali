.class public final Lcom/lewa/eaio/uuid/UUIDGen;
.super Ljava/lang/Object;
.source "UUIDGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/eaio/uuid/UUIDGen$HardwareAddressLookup;
    }
.end annotation


# static fields
.field private static clockSeqAndNode:J

.field private static lastTime:J

.field private static macAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const-wide/high16 v9, -0x8000

    const/4 v8, 0x0

    .line 50
    sput-wide v9, Lcom/lewa/eaio/uuid/UUIDGen;->lastTime:J

    .line 55
    sput-object v8, Lcom/lewa/eaio/uuid/UUIDGen;->macAddress:Ljava/lang/String;

    .line 60
    sput-wide v9, Lcom/lewa/eaio/uuid/UUIDGen;->clockSeqAndNode:J

    .line 65
    :try_start_0
    const-string v8, "java.net.InterfaceAddress"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 66
    const-string v8, "com.eaio.uuid.UUIDGen$HardwareAddressLookup"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/lewa/eaio/uuid/UUIDGen;->macAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_11

    .line 88
    :goto_0
    sget-object v8, Lcom/lewa/eaio/uuid/UUIDGen;->macAddress:Ljava/lang/String;

    if-nez v8, :cond_4

    .line 90
    const/4 v7, 0x0

    .line 91
    .local v7, p:Ljava/lang/Process;
    const/4 v2, 0x0

    .line 94
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_1
    const-string v8, "os.name"

    const-string v9, ""

    invoke-static {v8, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, osname:Ljava/lang/String;
    const-string v8, "Windows"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 97
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "ipconfig"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "/all"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 120
    :cond_0
    :goto_1
    if-eqz v7, :cond_2

    .line 121
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x80

    invoke-direct {v3, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    .end local v2           #in:Ljava/io/BufferedReader;
    .local v3, in:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 124
    .local v4, l:Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 125
    invoke-static {v4}, Lcom/lewa/eaio/uuid/MACAddressParser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/lewa/eaio/uuid/UUIDGen;->macAddress:Ljava/lang/String;

    .line 126
    sget-object v8, Lcom/lewa/eaio/uuid/UUIDGen;->macAddress:Ljava/lang/String;

    if-eqz v8, :cond_1

    sget-object v8, Lcom/lewa/eaio/uuid/UUIDGen;->macAddress:Ljava/lang/String;

    invoke-static {v8}, Lcom/lewa/eaio/util/lang/Hex;->parseShort(Ljava/lang/String;)S
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    move-result v8

    const/16 v9, 0xff

    if-eq v8, v9, :cond_1

    move-object v2, v3

    .line 141
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v4           #l:Ljava/lang/String;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    if-eqz v7, :cond_4

    .line 142
    if-eqz v2, :cond_3

    .line 144
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 151
    :cond_3
    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10

    .line 157
    :goto_4
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f

    .line 162
    :goto_5
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    .line 168
    .end local v6           #osname:Ljava/lang/String;
    :cond_4
    :goto_6
    sget-object v8, Lcom/lewa/eaio/uuid/UUIDGen;->macAddress:Ljava/lang/String;

    if-eqz v8, :cond_d

    .line 169
    sget-wide v8, Lcom/lewa/eaio/uuid/UUIDGen;->clockSeqAndNode:J

    sget-object v10, Lcom/lewa/eaio/uuid/UUIDGen;->macAddress:Ljava/lang/String;

    invoke-static {v10}, Lcom/lewa/eaio/util/lang/Hex;->parseLong(Ljava/lang/CharSequence;)J

    move-result-wide v10

    or-long/2addr v8, v10

    sput-wide v8, Lcom/lewa/eaio/uuid/UUIDGen;->clockSeqAndNode:J

    .line 186
    :goto_7
    sget-wide v8, Lcom/lewa/eaio/uuid/UUIDGen;->clockSeqAndNode:J

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x40cfff8000000000L

    mul-double/2addr v10, v12

    double-to-long v10, v10

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    sput-wide v8, Lcom/lewa/eaio/uuid/UUIDGen;->clockSeqAndNode:J

    .line 188
    return-void

    .line 101
    .restart local v6       #osname:Ljava/lang/String;
    :cond_5
    :try_start_6
    const-string v8, "Solaris"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "SunOS"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 103
    :cond_6
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "uname"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "-n"

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/lewa/eaio/uuid/UUIDGen;->getFirstLineOfCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, hostName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "/usr/sbin/arp"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    goto/16 :goto_1

    .line 111
    .end local v1           #hostName:Ljava/lang/String;
    :cond_7
    new-instance v8, Ljava/io/File;

    const-string v9, "/usr/sbin/lanscan"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 112
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "/usr/sbin/lanscan"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    goto/16 :goto_1

    .line 115
    :cond_8
    new-instance v8, Ljava/io/File;

    const-string v9, "/sbin/ifconfig"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 116
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "/sbin/ifconfig"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "-a"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v7

    goto/16 :goto_1

    .line 134
    .end local v6           #osname:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 141
    :goto_8
    if-eqz v7, :cond_4

    .line 142
    if-eqz v2, :cond_9

    .line 144
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 151
    :cond_9
    :goto_9
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d

    .line 157
    :goto_a
    :try_start_9
    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    .line 162
    :goto_b
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_6

    .line 137
    :catch_1
    move-exception v8

    .line 141
    :goto_c
    if-eqz v7, :cond_4

    .line 142
    if-eqz v2, :cond_a

    .line 144
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 151
    :cond_a
    :goto_d
    :try_start_b
    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 157
    :goto_e
    :try_start_c
    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 162
    :goto_f
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_6

    .line 141
    :catchall_0
    move-exception v8

    :goto_10
    if-eqz v7, :cond_c

    .line 142
    if-eqz v2, :cond_b

    .line 144
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 151
    :cond_b
    :goto_11
    :try_start_e
    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 157
    :goto_12
    :try_start_f
    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 162
    :goto_13
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    :cond_c
    throw v8

    .line 173
    :cond_d
    :try_start_10
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    .line 174
    .local v5, local:[B
    sget-wide v8, Lcom/lewa/eaio/uuid/UUIDGen;->clockSeqAndNode:J

    const/4 v10, 0x0

    aget-byte v10, v5, v10

    shl-int/lit8 v10, v10, 0x18

    int-to-long v10, v10

    const-wide v12, 0xff000000L

    and-long/2addr v10, v12

    or-long/2addr v8, v10

    sput-wide v8, Lcom/lewa/eaio/uuid/UUIDGen;->clockSeqAndNode:J

    .line 175
    sget-wide v8, Lcom/lewa/eaio/uuid/UUIDGen;->clockSeqAndNode:J

    const/4 v10, 0x1

    aget-byte v10, v5, v10

    shl-int/lit8 v10, v10, 0x10

    const/high16 v11, 0xff

    and-int/2addr v10, v11

    int-to-long v10, v10

    or-long/2addr v8, v10

    sput-wide v8, Lcom/lewa/eaio/uuid/UUIDGen;->clockSeqAndNode:J

    .line 176
    sget-wide v8, Lcom/lewa/eaio/uuid/UUIDGen;->clockSeqAndNode:J

    const/4 v10, 0x2

    aget-byte v10, v5, v10

    shl-int/lit8 v10, v10, 0x8

    const v11, 0xff00

    and-int/2addr v10, v11

    int-to-long v10, v10

    or-long/2addr v8, v10

    sput-wide v8, Lcom/lewa/eaio/uuid/UUIDGen;->clockSeqAndNode:J

    .line 177
    sget-wide v8, Lcom/lewa/eaio/uuid/UUIDGen;->clockSeqAndNode:J

    const/4 v10, 0x3

    aget-byte v10, v5, v10

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    or-long/2addr v8, v10

    sput-wide v8, Lcom/lewa/eaio/uuid/UUIDGen;->clockSeqAndNode:J
    :try_end_10
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_7

    .line 179
    .end local v5           #local:[B
    :catch_2
    move-exception v0

    .line 180
    .local v0, ex:Ljava/net/UnknownHostException;
    sget-wide v8, Lcom/lewa/eaio/uuid/UUIDGen;->clockSeqAndNode:J

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x41dfffffffc00000L

    mul-double/2addr v10, v12

    double-to-long v10, v10

    or-long/2addr v8, v10

    sput-wide v8, Lcom/lewa/eaio/uuid/UUIDGen;->clockSeqAndNode:J

    goto/16 :goto_7

    .line 146
    .end local v0           #ex:Ljava/net/UnknownHostException;
    .restart local v6       #osname:Ljava/lang/String;
    :catch_3
    move-exception v8

    goto/16 :goto_3

    .end local v6           #osname:Ljava/lang/String;
    :catch_4
    move-exception v8

    goto/16 :goto_9

    :catch_5
    move-exception v8

    goto/16 :goto_d

    :catch_6
    move-exception v9

    goto :goto_11

    .line 159
    :catch_7
    move-exception v9

    goto :goto_13

    .line 153
    :catch_8
    move-exception v9

    goto :goto_12

    .line 141
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v4       #l:Ljava/lang/String;
    .restart local v6       #osname:Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_10

    .line 159
    .end local v4           #l:Ljava/lang/String;
    .end local v6           #osname:Ljava/lang/String;
    :catch_9
    move-exception v8

    goto/16 :goto_f

    .line 153
    :catch_a
    move-exception v8

    goto/16 :goto_e

    .line 137
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v4       #l:Ljava/lang/String;
    .restart local v6       #osname:Ljava/lang/String;
    :catch_b
    move-exception v8

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto/16 :goto_c

    .line 159
    .end local v4           #l:Ljava/lang/String;
    .end local v6           #osname:Ljava/lang/String;
    :catch_c
    move-exception v8

    goto/16 :goto_b

    .line 153
    :catch_d
    move-exception v8

    goto/16 :goto_a

    .line 134
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v4       #l:Ljava/lang/String;
    .restart local v6       #osname:Ljava/lang/String;
    :catch_e
    move-exception v8

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto/16 :goto_8

    .line 159
    .end local v4           #l:Ljava/lang/String;
    :catch_f
    move-exception v8

    goto/16 :goto_5

    .line 153
    :catch_10
    move-exception v8

    goto/16 :goto_4

    .line 84
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v6           #osname:Ljava/lang/String;
    .end local v7           #p:Ljava/lang/Process;
    :catch_11
    move-exception v8

    goto/16 :goto_0

    .line 81
    :catch_12
    move-exception v8

    goto/16 :goto_0

    .line 78
    :catch_13
    move-exception v8

    goto/16 :goto_0

    .line 75
    :catch_14
    move-exception v8

    goto/16 :goto_0

    .line 72
    :catch_15
    move-exception v8

    goto/16 :goto_0

    .line 69
    :catch_16
    move-exception v8

    goto/16 :goto_0

    .restart local v3       #in:Ljava/io/BufferedReader;
    .restart local v4       #l:Ljava/lang/String;
    .restart local v6       #osname:Ljava/lang/String;
    .restart local v7       #p:Ljava/lang/Process;
    :cond_e
    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static declared-synchronized createTime(J)J
    .locals 12
    .parameter "currentTimeMillis"

    .prologue
    .line 225
    const-class v5, Lcom/lewa/eaio/uuid/UUIDGen;

    monitor-enter v5

    const-wide/16 v6, 0x2710

    mul-long/2addr v6, p0

    const-wide v8, 0x1b21dd213814000L

    add-long v2, v6, v8

    .line 227
    .local v2, timeMillis:J
    :try_start_0
    sget-wide v6, Lcom/lewa/eaio/uuid/UUIDGen;->lastTime:J

    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    .line 228
    sput-wide v2, Lcom/lewa/eaio/uuid/UUIDGen;->lastTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :goto_0
    const/16 v4, 0x20

    shl-long v0, v2, v4

    .line 240
    .local v0, time:J
    const-wide v6, 0xffff00000000L

    and-long/2addr v6, v2

    const/16 v4, 0x10

    shr-long/2addr v6, v4

    or-long/2addr v0, v6

    .line 244
    const-wide/16 v6, 0x1000

    const/16 v4, 0x30

    shr-long v8, v2, v4

    const-wide/16 v10, 0xfff

    and-long/2addr v8, v10

    or-long/2addr v6, v8

    or-long/2addr v0, v6

    .line 246
    monitor-exit v5

    return-wide v0

    .line 231
    .end local v0           #time:J
    :cond_0
    :try_start_1
    sget-wide v6, Lcom/lewa/eaio/uuid/UUIDGen;->lastTime:J

    const-wide/16 v8, 0x1

    add-long v2, v6, v8

    sput-wide v2, Lcom/lewa/eaio/uuid/UUIDGen;->lastTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 225
    .end local v2           #timeMillis:J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static getClockSeqAndNode()J
    .locals 2

    .prologue
    .line 197
    sget-wide v0, Lcom/lewa/eaio/uuid/UUIDGen;->clockSeqAndNode:J

    return-wide v0
.end method

.method static varargs getFirstLineOfCommand([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "commands"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, p:Ljava/lang/Process;
    const/4 v1, 0x0

    .line 272
    .local v1, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 273
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x80

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 279
    if-eqz v0, :cond_1

    .line 280
    if-eqz v2, :cond_0

    .line 282
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 289
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 295
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 300
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_1
    return-object v3

    .line 279
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v0, :cond_3

    .line 280
    if-eqz v1, :cond_2

    .line 282
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 289
    :cond_2
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 295
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 300
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_3
    throw v3

    .line 284
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    goto :goto_4

    .line 297
    :catch_2
    move-exception v4

    goto :goto_6

    .line 291
    :catch_3
    move-exception v4

    goto :goto_5

    .line 279
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 297
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    goto :goto_2

    .line 291
    :catch_5
    move-exception v4

    goto :goto_1
.end method

.method public static getMACAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/lewa/eaio/uuid/UUIDGen;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static newTime()J
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lewa/eaio/uuid/UUIDGen;->createTime(J)J

    move-result-wide v0

    return-wide v0
.end method
