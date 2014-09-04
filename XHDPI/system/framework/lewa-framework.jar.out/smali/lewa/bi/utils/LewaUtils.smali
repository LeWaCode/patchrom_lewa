.class public Llewa/bi/utils/LewaUtils;
.super Ljava/lang/Object;
.source "LewaUtils.java"


# static fields
.field private static final CLASS_NAME_BIAGENT:Ljava/lang/String; = "lewa.bi.BIAgent"

.field private static final CLASS_NAME_LEWA_BUILD:Ljava/lang/String; = "lewa.os.Build"

.field private static final CLASS_NAME_SYSTEM_PROPERTIES:Ljava/lang/String; = "android.os.SystemProperties"

.field private static final DEFAULT_SYS_PARTNER:Ljava/lang/String; = "Lewa"

.field private static final FIELD_NAME_LEWA_BUILD_VERSION:Ljava/lang/String; = "LEWA_VERSION"

.field private static final METHOD_NAME_GET_CLIENT_ID:Ljava/lang/String; = "getBIClientId"

.field private static final METHOD_NAME_GET_STRING:Ljava/lang/String; = "get"

.field private static final STRING_SYS_PARTNER:Ljava/lang/String; = "ro.sys.partner"

.field public static final USER_AGENT_PREFIX:Ljava/lang/String; = "LewaApi/1.0-1"

.field private static appVersionCode:Ljava/lang/String;

.field private static initAppVersionCode:Z

.field private static initBiClientId:Z

.field private static initLewaBuildVersion:Z

.field private static initPartner:Z

.field private static initUserAgent:Z

.field private static lewaBuildVersion:Ljava/lang/String;

.field private static systemPartner:Ljava/lang/String;

.field private static userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    sput-object v1, Llewa/bi/utils/LewaUtils;->userAgent:Ljava/lang/String;

    .line 36
    sput-object v1, Llewa/bi/utils/LewaUtils;->appVersionCode:Ljava/lang/String;

    .line 41
    sput-object v1, Llewa/bi/utils/LewaUtils;->lewaBuildVersion:Ljava/lang/String;

    .line 43
    sput-object v1, Llewa/bi/utils/LewaUtils;->systemPartner:Ljava/lang/String;

    .line 45
    sput-boolean v0, Llewa/bi/utils/LewaUtils;->initBiClientId:Z

    .line 46
    sput-boolean v0, Llewa/bi/utils/LewaUtils;->initLewaBuildVersion:Z

    .line 47
    sput-boolean v0, Llewa/bi/utils/LewaUtils;->initPartner:Z

    .line 48
    sput-boolean v0, Llewa/bi/utils/LewaUtils;->initUserAgent:Z

    .line 49
    sput-boolean v0, Llewa/bi/utils/LewaUtils;->initAppVersionCode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 138
    sget-boolean v3, Llewa/bi/utils/LewaUtils;->initAppVersionCode:Z

    if-nez v3, :cond_0

    if-eqz p0, :cond_0

    .line 139
    const/4 v3, 0x1

    sput-boolean v3, Llewa/bi/utils/LewaUtils;->initAppVersionCode:Z

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 141
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 144
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 145
    .local v1, pi:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 146
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Llewa/bi/utils/LewaUtils;->appVersionCode:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 148
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 153
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    sget-object v3, Llewa/bi/utils/LewaUtils;->appVersionCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getBiClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, biClientId:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 61
    const/4 v3, 0x0

    .line 63
    .local v3, demo:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v6, "lewa.bi.BIAgent"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 64
    const-string v6, "getBIClientId"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 65
    .local v5, method:Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 74
    .end local v1           #biClientId:Ljava/lang/String;
    .end local v3           #demo:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #method:Ljava/lang/reflect/Method;
    .local v2, biClientId:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 66
    .end local v2           #biClientId:Ljava/lang/String;
    .restart local v1       #biClientId:Ljava/lang/String;
    .restart local v3       #demo:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 71
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3           #demo:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    move-object v2, v1

    .line 74
    .end local v1           #biClientId:Ljava/lang/String;
    .restart local v2       #biClientId:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getLewaOSVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    sget-boolean v3, Llewa/bi/utils/LewaUtils;->initLewaBuildVersion:Z

    if-nez v3, :cond_0

    .line 84
    const/4 v3, 0x1

    sput-boolean v3, Llewa/bi/utils/LewaUtils;->initLewaBuildVersion:Z

    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, demo:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "lewa.os.Build"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 89
    const-string v3, "LEWA_VERSION"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 90
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Llewa/bi/utils/LewaUtils;->lewaBuildVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v2           #field:Ljava/lang/reflect/Field;
    .local v1, e:Ljava/lang/Exception;
    :goto_0
    return-object v3

    .line 91
    .end local v1           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v1

    .line 96
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    :cond_0
    sget-object v3, Llewa/bi/utils/LewaUtils;->lewaBuildVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getPartner()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 108
    sget-boolean v3, Llewa/bi/utils/LewaUtils;->initPartner:Z

    if-nez v3, :cond_0

    .line 109
    sput-boolean v4, Llewa/bi/utils/LewaUtils;->initPartner:Z

    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, demo:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 114
    const-string v3, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 115
    .local v2, method:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.sys.partner"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Llewa/bi/utils/LewaUtils;->systemPartner:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v2           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    sget-object v3, Llewa/bi/utils/LewaUtils;->systemPartner:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "Lewa"

    sget-object v4, Llewa/bi/utils/LewaUtils;->systemPartner:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    :cond_1
    const-string v3, "Lewa"

    sput-object v3, Llewa/bi/utils/LewaUtils;->systemPartner:Ljava/lang/String;

    .line 128
    :cond_2
    sget-object v3, Llewa/bi/utils/LewaUtils;->systemPartner:Ljava/lang/String;

    return-object v3

    .line 116
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 163
    const-class v5, Llewa/bi/utils/LewaUtils;

    monitor-enter v5

    :try_start_0
    sget-boolean v4, Llewa/bi/utils/LewaUtils;->initUserAgent:Z

    if-nez v4, :cond_5

    if-eqz p0, :cond_5

    .line 164
    const/4 v4, 0x1

    sput-boolean v4, Llewa/bi/utils/LewaUtils;->initUserAgent:Z

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
    .local v3, s:Ljava/lang/StringBuilder;
    const-string v4, "LewaApi/1.0-1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v4, " (Android "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 169
    .local v2, model:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 170
    const-string v4, "; Model "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    const-string v7, "_"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_0
    invoke-static {}, Llewa/bi/utils/LewaUtils;->getLewaOSVersion()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, lewaOSVersion:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 174
    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_1
    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    sget-boolean v4, Llewa/bi/utils/LewaUtils;->initAppVersionCode:Z

    if-nez v4, :cond_2

    .line 178
    invoke-static {p0}, Llewa/bi/utils/LewaUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    .line 180
    :cond_2
    sget-object v4, Llewa/bi/utils/LewaUtils;->appVersionCode:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Llewa/bi/utils/LewaUtils;->appVersionCode:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_3
    invoke-static {p0}, Llewa/bi/utils/LewaUtils;->getBiClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, biClientId:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 185
    const-string v4, " ClientID/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Llewa/bi/utils/LewaUtils;->userAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local v0           #biClientId:Ljava/lang/String;
    .end local v1           #lewaOSVersion:Ljava/lang/String;
    .end local v2           #model:Ljava/lang/String;
    .end local v3           #s:Ljava/lang/StringBuilder;
    :goto_0
    monitor-exit v5

    return-object v4

    :cond_5
    :try_start_1
    sget-object v4, Llewa/bi/utils/LewaUtils;->userAgent:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
