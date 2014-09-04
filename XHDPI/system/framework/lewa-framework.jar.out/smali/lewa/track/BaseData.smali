.class public Llewa/track/BaseData;
.super Ljava/lang/Object;
.source "BaseData.java"


# static fields
.field private static final PERSIST_SYS_EML:Ljava/lang/String; = "persist.sys.eml"

.field private static final PERSIST_SYS_UUID:Ljava/lang/String; = "persist.sys.uuid"

.field private static final TAG:Ljava/lang/String; = "Tracker"

.field private static context:Landroid/content/Context;

.field private static email:Ljava/lang/String;

.field private static uuid:Ljava/lang/String;


# instance fields
.field private lm:Landroid/location/LocationManager;

.field private location:Landroid/location/Location;

.field private locationListener:Landroid/location/LocationListener;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "Tracker"

    const-string v1, "BaseData construct "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    sget-object v0, Llewa/track/BaseData;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Llewa/track/BaseData;->initLocation(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0}, Llewa/track/BaseData;->setUserId()V

    .line 46
    return-void
.end method

.method public static SetContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    sput-object p0, Llewa/track/BaseData;->context:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public static getEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "Tracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseData get Email"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Llewa/track/BaseData;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    invoke-static {}, Llewa/track/BaseData;->loadEmail()V

    .line 61
    sget-object v0, Llewa/track/BaseData;->email:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Llewa/track/BaseData;->email:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 62
    :cond_1
    const-string v0, "0"

    .line 64
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Llewa/track/BaseData;->email:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "Tracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get uuid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Llewa/track/BaseData;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    sget-object v0, Llewa/track/BaseData;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Llewa/track/BaseData;->uuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 153
    :cond_1
    const-string v0, "0"

    .line 155
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Llewa/track/BaseData;->uuid:Ljava/lang/String;

    goto :goto_0
.end method

.method private initLocation(Landroid/content/Context;)V
    .locals 5
    .parameter "mContext"

    .prologue
    .line 279
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    const-string v2, "Tracker"

    const-string v3, "initLocation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    :try_start_0
    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Llewa/track/BaseData;->lm:Landroid/location/LocationManager;

    .line 284
    iget-object v2, p0, Llewa/track/BaseData;->lm:Landroid/location/LocationManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    .line 285
    .local v1, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_3

    .line 286
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    const-string v2, "Tracker"

    const-string v3, "providers list is empty "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_1
    :goto_0
    iget-object v2, p0, Llewa/track/BaseData;->lm:Landroid/location/LocationManager;

    if-eqz v2, :cond_2

    .line 295
    iget-object v2, p0, Llewa/track/BaseData;->lm:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    iput-object v2, p0, Llewa/track/BaseData;->location:Landroid/location/Location;

    .line 301
    .end local v1           #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-void

    .line 290
    .restart local v1       #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    const-string v2, "Tracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "providers is ok providers size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    .end local v1           #providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 298
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "Tracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static loadEmail()V
    .locals 6

    .prologue
    .line 69
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    const-string v3, "Tracker"

    const-string v4, "load Email "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    const-string v1, ""

    .line 74
    .local v1, emailTmp:Ljava/lang/String;
    :try_start_0
    sget-object v3, Llewa/track/BaseData;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 75
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "persist.sys.eml"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 82
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 83
    :cond_2
    const-string v3, ""

    sput-object v3, Llewa/track/BaseData;->email:Ljava/lang/String;

    .line 87
    :goto_1
    return-void

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, ex:Ljava/lang/Exception;
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    const-string v3, "Tracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot load email: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_3
    sput-object v1, Llewa/track/BaseData;->email:Ljava/lang/String;

    goto :goto_1
.end method

.method private loadUserId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 132
    const-string v2, ""

    .line 134
    .local v2, uuidTmp:Ljava/lang/String;
    :try_start_0
    sget-object v3, Llewa/track/BaseData;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "persist.sys.uuid"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 141
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 142
    :cond_1
    const-string v2, ""

    .line 144
    .end local v2           #uuidTmp:Ljava/lang/String;
    :cond_2
    return-object v2

    .line 136
    .restart local v2       #uuidTmp:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 137
    .local v1, ex:Ljava/lang/Exception;
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    const-string v3, "Tracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot load UserId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveUserId(Ljava/lang/String;)V
    .locals 5
    .parameter "uuid"

    .prologue
    .line 119
    :try_start_0
    sget-object v2, Llewa/track/BaseData;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "persist.sys.uuid"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const-string v2, "Tracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save uuid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "persist.sys.uuid"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, ex:Ljava/lang/Exception;
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const-string v2, "Tracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot saveUserId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUserId()V
    .locals 7

    .prologue
    .line 91
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 92
    .local v1, r:Ljava/util/Random;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v2, randomStr:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v4, 0x20

    if-ge v0, v4, :cond_0

    .line 95
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    const-string v4, "Tracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set uuid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    invoke-direct {p0}, Llewa/track/BaseData;->loadUserId()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, uuidTmp:Ljava/lang/String;
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    const-string v4, "Tracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uuidTmp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 109
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Llewa/track/BaseData;->saveUserId(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Llewa/track/BaseData;->uuid:Ljava/lang/String;

    .line 114
    :goto_1
    return-void

    .line 112
    :cond_4
    sput-object v3, Llewa/track/BaseData;->uuid:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    const-string v1, "ro.sys.partner"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, channel:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 217
    const-string v0, "Lewa"

    .line 219
    :cond_0
    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    const-string v1, ""

    .line 162
    .local v1, imei:Ljava/lang/String;
    :try_start_0
    sget-object v2, Llewa/track/BaseData;->context:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Llewa/track/BaseData;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 164
    iget-object v2, p0, Llewa/track/BaseData;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 166
    const-string v2, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v1

    .line 168
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "Tracker"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v2, "0"

    goto :goto_0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 4

    .prologue
    .line 322
    const-string v0, ""

    .line 324
    .local v0, Latitude:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Llewa/track/BaseData;->location:Landroid/location/Location;

    if-eqz v2, :cond_1

    .line 325
    iget-object v2, p0, Llewa/track/BaseData;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 328
    const-string v2, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    .line 330
    goto :goto_0

    .line 333
    :catch_0
    move-exception v1

    .line 335
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "Tracker"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    const-string v2, "0"

    goto :goto_0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 4

    .prologue
    .line 304
    const-string v0, ""

    .line 306
    .local v0, Longitude:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Llewa/track/BaseData;->location:Landroid/location/Location;

    if-eqz v2, :cond_1

    .line 307
    iget-object v2, p0, Llewa/track/BaseData;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 310
    const-string v2, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    .line 312
    goto :goto_0

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "Tracker"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    const-string v2, "0"

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 178
    const-string v2, ""

    .line 180
    .local v2, mac:Ljava/lang/String;
    :try_start_0
    sget-object v4, Llewa/track/BaseData;->context:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 182
    .local v3, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 183
    .local v1, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 185
    const-string v4, "0"

    .line 194
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    .end local v3           #wifi:Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v4

    .line 187
    .restart local v1       #info:Landroid/net/wifi/WifiInfo;
    .restart local v3       #wifi:Landroid/net/wifi/WifiManager;
    :cond_0
    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v4, v2

    .line 188
    goto :goto_0

    .line 190
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    .end local v3           #wifi:Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 191
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    const-string v4, "Tracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not read MAC, forget to include ACCESS_WIFI_STATE permission?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    const-string v4, "0"

    goto :goto_0
.end method

.method public getModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 208
    .local v0, model:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 209
    const-string v0, "0"

    .line 211
    :cond_0
    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 8

    .prologue
    .line 223
    const-string v4, "0"

    .line 224
    .local v4, typeName:Ljava/lang/String;
    sget-object v5, Llewa/track/BaseData;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 225
    .local v3, localPackageManager:Landroid/content/pm/PackageManager;
    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    sget-object v6, Llewa/track/BaseData;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    const-string v4, "0"

    move-object v5, v4

    .line 254
    :goto_0
    return-object v5

    .line 230
    :cond_0
    sget-object v5, Llewa/track/BaseData;->context:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 231
    .local v0, localConnectivityManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 233
    const-string v4, "0"

    move-object v5, v4

    .line 234
    goto :goto_0

    .line 236
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 237
    .local v1, localNetworkInfo1:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_2

    .line 240
    const-string v4, "wifi"

    move-object v5, v4

    .line 241
    goto :goto_0

    .line 244
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 245
    .local v2, localNetworkInfo2:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_4

    .line 248
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 250
    const-string v5, "Tracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2G/3G SubtypeName  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v5, v4

    .line 251
    goto :goto_0

    .line 254
    :cond_4
    const-string v5, "0"

    goto :goto_0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 6

    .prologue
    .line 258
    const-string v1, ""

    .line 260
    .local v1, simOperator:Ljava/lang/String;
    :try_start_0
    sget-object v3, Llewa/track/BaseData;->context:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 263
    .local v2, tel:Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 266
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 267
    const-string v3, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v2           #tel:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v3

    .restart local v2       #tel:Landroid/telephony/TelephonyManager;
    :cond_1
    move-object v3, v1

    .line 269
    goto :goto_0

    .line 271
    .end local v2           #tel:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 272
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    const-string v3, "Tracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "operator is none "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_2
    const-string v3, "0"

    goto :goto_0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    const-string v1, "ro.lewa.version"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, osVersion:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 201
    const-string v0, "0"

    .line 203
    :cond_0
    return-object v0
.end method
