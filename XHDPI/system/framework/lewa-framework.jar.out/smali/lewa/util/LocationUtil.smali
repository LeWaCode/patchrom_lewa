.class public Llewa/util/LocationUtil;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/util/LocationUtil$1;,
        Llewa/util/LocationUtil$AsyncQueryLocation;,
        Llewa/util/LocationUtil$LocationCallBack;,
        Llewa/util/LocationUtil$LocationHolder;
    }
.end annotation


# static fields
.field private static final AREACODE:Ljava/lang/String; = "areacode"

.field private static final AREACODE_URI:Landroid/net/Uri; = null

.field private static final AUTHORITY:Ljava/lang/String; = "com.lewa.providers.location"

.field private static final CARDTYPE:Ljava/lang/String; = "cardType"

.field private static final CARDTYPE_URI:Landroid/net/Uri; = null

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final LOCATION_URI:Landroid/net/Uri; = null

.field private static final ONLY_LOCAL_SPECIALNUM:I = 0x1

.field private static final ONLY_LOCATION:I = 0x0

.field private static final ONLY_SPECIALNUM:I = 0x2

.field private static final PHONE_NO:Ljava/lang/String; = "number"

.field public static final PHONE_TYPE_FIXED_LINE:Ljava/lang/String; = null

.field private static final SPECIALNUM_FIRST:I = 0x3

.field private static final SPECIALNUM_FIRST_LOCAL:I = 0x4

.field private static final SPECIAL_PHONE_LOCAL_URI:Landroid/net/Uri;

.field private static final SPECIAL_PHONE_URI:Landroid/net/Uri;

.field private static final mLocationCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Llewa/util/LocationUtil$LocationHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpecialNumCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x904002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/util/LocationUtil;->PHONE_TYPE_FIXED_LINE:Ljava/lang/String;

    .line 38
    const-string v0, "content://com.lewa.providers.location/location"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/util/LocationUtil;->LOCATION_URI:Landroid/net/Uri;

    .line 39
    const-string v0, "content://com.lewa.providers.location/cardType"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/util/LocationUtil;->CARDTYPE_URI:Landroid/net/Uri;

    .line 40
    const-string v0, "content://com.lewa.providers.location/areacode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/util/LocationUtil;->AREACODE_URI:Landroid/net/Uri;

    .line 41
    const-string v0, "content://com.lewa.providers.location/special_phone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/util/LocationUtil;->SPECIAL_PHONE_URI:Landroid/net/Uri;

    .line 42
    const-string v0, "content://com.lewa.providers.location/special_phone_local"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/util/LocationUtil;->SPECIAL_PHONE_LOCAL_URI:Landroid/net/Uri;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Llewa/util/LocationUtil;->mLocationCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Llewa/util/LocationUtil;->mSpecialNumCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-static {p0, p1}, Llewa/util/LocationUtil;->getPhoneLocationCached(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Llewa/util/LocationUtil;->getPhoneLocationInternal(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static filterPhoneNo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strPhoneNo"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x5

    .line 64
    if-nez p0, :cond_1

    move-object p0, v0

    .line 100
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 68
    .restart local p0
    :cond_1
    const-string v1, "\\-"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 69
    const-string v1, "\\ "

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 70
    const-string v1, "\\*"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 72
    const-string v1, "+86"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 97
    :cond_2
    :goto_1
    invoke-static {p0}, Llewa/util/LocationUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 98
    goto :goto_0

    .line 75
    :cond_3
    const-string v1, "17951"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 76
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 78
    :cond_4
    const-string v1, "12593"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 81
    :cond_5
    const-string v1, "17911"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 82
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 84
    :cond_6
    const-string v1, "10193"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 85
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 87
    :cond_7
    const-string v1, "17909"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 88
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 90
    :cond_8
    const-string v1, "17908"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 91
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 93
    :cond_9
    const-string v1, "11808"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static getPhoneCardType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "phoneNo"

    .prologue
    .line 286
    invoke-static {p0, p1}, Llewa/util/LocationUtil;->getPhoneLocationInternal(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, phoneLocation:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 288
    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 291
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPhoneLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "phoneNo"

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Llewa/util/LocationUtil;->getPhoneLocation(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneLocation(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "phoneNo"
    .parameter "onlyLocation"

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-static {p0, p1}, Llewa/util/LocationUtil;->getPhoneLocationCached(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, phoneLocation:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 255
    aget-object v1, v0, v1

    .line 263
    :goto_0
    return-object v1

    .line 258
    :cond_0
    invoke-static {p0, p1, p2}, Llewa/util/LocationUtil;->getPhoneLocationInternal(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_1

    .line 260
    aget-object v1, v0, v1

    goto :goto_0

    .line 263
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPhoneLocationAndCardType(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "phoneNo"

    .prologue
    .line 296
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Llewa/util/LocationUtil;->getPhoneLocationInternal(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneLocationAsync(Landroid/content/Context;Ljava/lang/String;Llewa/util/LocationUtil$LocationCallBack;)V
    .locals 1
    .parameter "context"
    .parameter "phoneNo"
    .parameter "mCallback"

    .prologue
    const/4 v0, 0x0

    .line 270
    invoke-static {p0, p1, v0, v0, p2}, Llewa/util/LocationUtil;->getPhoneLocationAsync(Landroid/content/Context;Ljava/lang/String;ZZLlewa/util/LocationUtil$LocationCallBack;)V

    .line 271
    return-void
.end method

.method public static getPhoneLocationAsync(Landroid/content/Context;Ljava/lang/String;ZLlewa/util/LocationUtil$LocationCallBack;)V
    .locals 1
    .parameter "context"
    .parameter "phoneNo"
    .parameter "onlyLocation"
    .parameter "mCallback"

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Llewa/util/LocationUtil;->getPhoneLocationAsync(Landroid/content/Context;Ljava/lang/String;ZZLlewa/util/LocationUtil$LocationCallBack;)V

    .line 278
    return-void
.end method

.method public static getPhoneLocationAsync(Landroid/content/Context;Ljava/lang/String;ZZLlewa/util/LocationUtil$LocationCallBack;)V
    .locals 8
    .parameter "context"
    .parameter "phoneNo"
    .parameter "onlyLocation"
    .parameter "onlyLocal"
    .parameter "mCallback"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 282
    new-instance v3, Llewa/util/LocationUtil$AsyncQueryLocation;

    invoke-direct {v3}, Llewa/util/LocationUtil$AsyncQueryLocation;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p0, v5, v0

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    :goto_0
    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    aput-object p4, v5, v2

    invoke-virtual {v3, v4, v5}, Llewa/util/LocationUtil$AsyncQueryLocation;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 283
    return-void

    .line 282
    :cond_0
    if-eqz p3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private static getPhoneLocationCached(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "phoneNo"

    .prologue
    const/4 v3, 0x0

    .line 144
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    .line 146
    .local v1, phoneLocation:[Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v3

    .line 162
    .end local v1           #phoneLocation:[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 150
    .restart local v1       #phoneLocation:[Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Llewa/util/LocationUtil;->getPhoneNoKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, phoneNoKey:Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v1, v3

    .line 152
    goto :goto_0

    .line 154
    :cond_1
    sget-object v4, Llewa/util/LocationUtil;->mLocationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/util/LocationUtil$LocationHolder;

    .line 155
    .local v0, mLocationHolder:Llewa/util/LocationUtil$LocationHolder;
    if-eqz v0, :cond_2

    .line 156
    const/4 v3, 0x0

    iget-object v4, v0, Llewa/util/LocationUtil$LocationHolder;->location:Ljava/lang/String;

    aput-object v4, v1, v3

    .line 157
    const/4 v3, 0x1

    iget-object v4, v0, Llewa/util/LocationUtil$LocationHolder;->cardType:Ljava/lang/String;

    aput-object v4, v1, v3

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 160
    goto :goto_0
.end method

.method private static getPhoneLocationInternal(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "phoneNo"

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Llewa/util/LocationUtil;->getPhoneLocationInternal(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPhoneLocationInternal(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 18
    .parameter "context"
    .parameter "phoneNo"
    .parameter "onlyLocation"

    .prologue
    .line 170
    const/4 v3, 0x2

    new-array v15, v3, [Ljava/lang/String;

    .line 171
    .local v15, phoneLocation:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 172
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 173
    .local v5, selStrings:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 176
    .local v2, cr:Landroid/content/ContentResolver;
    if-nez p1, :cond_1

    .line 177
    const/4 v15, 0x0

    .line 244
    .end local v15           #phoneLocation:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v15

    .line 181
    .restart local v15       #phoneLocation:[Ljava/lang/String;
    :cond_1
    if-nez p2, :cond_3

    .line 183
    invoke-static/range {p1 .. p1}, Llewa/util/LocationUtil;->getSpecialPhoneAreaNum(Ljava/lang/String;)I

    move-result v17

    .line 184
    .local v17, phoneNoPreNum:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 187
    :try_start_0
    sget-object v3, Llewa/util/LocationUtil;->SPECIAL_PHONE_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "location"

    aput-object v8, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 192
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    const/4 v3, 0x0

    const-string v4, "location"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_2
    if-eqz v12, :cond_3

    .line 201
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 207
    .end local v17           #phoneNoPreNum:I
    :cond_3
    :goto_1
    const/4 v3, 0x0

    aget-object v3, v15, v3

    if-nez v3, :cond_9

    .line 208
    invoke-static/range {p1 .. p1}, Llewa/util/LocationUtil;->getPhoneNoKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 209
    .local v16, phoneNoKey:Ljava/lang/String;
    if-nez v16, :cond_5

    .line 210
    const/4 v15, 0x0

    goto :goto_0

    .line 196
    .end local v16           #phoneNoKey:Ljava/lang/String;
    .restart local v17       #phoneNoPreNum:I
    :catch_0
    move-exception v13

    .line 197
    .local v13, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    if-eqz v12, :cond_3

    .line 201
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 200
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_4

    .line 201
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    .line 212
    .end local v17           #phoneNoPreNum:I
    .restart local v16       #phoneNoKey:Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    .line 214
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.lewa.providers.location/location/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 215
    .local v7, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 221
    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 222
    const/4 v3, 0x0

    const-string v4, "location"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v3

    .line 223
    const/4 v3, 0x1

    const-string v4, "cardType"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 230
    :cond_6
    if-eqz v12, :cond_7

    .line 231
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 234
    .end local v7           #uri:Landroid/net/Uri;
    :cond_7
    :goto_2
    const/4 v3, 0x0

    aget-object v3, v15, v3

    if-eqz v3, :cond_0

    .line 235
    new-instance v14, Llewa/util/LocationUtil$LocationHolder;

    const/4 v3, 0x0

    invoke-direct {v14, v3}, Llewa/util/LocationUtil$LocationHolder;-><init>(Llewa/util/LocationUtil$1;)V

    .line 236
    .local v14, mholder:Llewa/util/LocationUtil$LocationHolder;
    const/4 v3, 0x0

    aget-object v3, v15, v3

    iput-object v3, v14, Llewa/util/LocationUtil$LocationHolder;->location:Ljava/lang/String;

    .line 237
    const/4 v3, 0x1

    aget-object v3, v15, v3

    iput-object v3, v14, Llewa/util/LocationUtil$LocationHolder;->cardType:Ljava/lang/String;

    .line 238
    sget-object v3, Llewa/util/LocationUtil;->mLocationCache:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 226
    .end local v14           #mholder:Llewa/util/LocationUtil$LocationHolder;
    :catch_1
    move-exception v13

    .line 227
    .restart local v13       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 230
    if-eqz v12, :cond_7

    .line 231
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 230
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    if-eqz v12, :cond_8

    .line 231
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3

    .line 242
    .end local v16           #phoneNoKey:Ljava/lang/String;
    :cond_9
    sget-object v3, Llewa/util/LocationUtil;->mSpecialNumCache:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x0

    aget-object v4, v15, v4

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static getPhoneNoKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "phoneNoStr"

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x7

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 108
    invoke-static {p0}, Llewa/util/LocationUtil;->filterPhoneNo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, strPhoneNoFilter:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 110
    const/4 v1, 0x0

    .line 123
    :goto_0
    return-object v1

    .line 114
    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_1

    const-string v1, "170"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 116
    :cond_1
    const-string v1, "170"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v6, :cond_2

    .line 117
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 118
    :cond_2
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_3

    .line 119
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 120
    :cond_3
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_4

    .line 121
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 123
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSpecialPhone(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "phoneNo"

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Llewa/util/LocationUtil;->getSpecialPhone(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSpecialPhone(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "phoneNo"
    .parameter "local"

    .prologue
    .line 306
    const/4 v8, 0x0

    .line 307
    .local v8, phoneLocation:Ljava/lang/String;
    const/4 v6, 0x0

    .line 309
    .local v6, cursor:Landroid/database/Cursor;
    sget-object v1, Llewa/util/LocationUtil;->mSpecialNumCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 310
    sget-object v1, Llewa/util/LocationUtil;->mSpecialNumCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 347
    :goto_0
    return-object v1

    .line 312
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p1, :cond_2

    .line 314
    invoke-static {p1}, Llewa/util/LocationUtil;->getSpecialPhoneAreaNum(Ljava/lang/String;)I

    move-result v9

    .line 316
    .local v9, phoneNoPreNum:I
    if-eqz p2, :cond_4

    .line 317
    :try_start_0
    sget-object v1, Llewa/util/LocationUtil;->SPECIAL_PHONE_LOCAL_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "location"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 331
    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    const-string v1, "location"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 339
    :cond_1
    if-eqz v6, :cond_2

    .line 340
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 344
    .end local v9           #phoneNoPreNum:I
    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    sget-object v1, Llewa/util/LocationUtil;->mSpecialNumCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v1, v8

    .line 347
    goto :goto_0

    .line 325
    .restart local v9       #phoneNoPreNum:I
    :cond_4
    :try_start_1
    sget-object v1, Llewa/util/LocationUtil;->SPECIAL_PHONE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "location"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1

    .line 335
    :catch_0
    move-exception v7

    .line 336
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    if-eqz v6, :cond_2

    .line 340
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 339
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 340
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public static getSpecialPhoneAreaNum(Ljava/lang/String;)I
    .locals 6
    .parameter "phoneNoStr"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 128
    invoke-static {p0}, Llewa/util/LocationUtil;->filterPhoneNo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, strPhoneNoFilter:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_2

    :cond_0
    move v1, v3

    .line 138
    :cond_1
    :goto_0
    return v1

    .line 133
    :cond_2
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v1, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_1

    .line 135
    :cond_3
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_4

    move v1, v2

    .line 136
    goto :goto_0

    :cond_4
    move v1, v3

    .line 138
    goto :goto_0
.end method

.method public static getSpecialPhoneAsync(Landroid/content/Context;Ljava/lang/String;ZLlewa/util/LocationUtil$LocationCallBack;)V
    .locals 6
    .parameter "context"
    .parameter "phoneNo"
    .parameter "local"
    .parameter "mCallback"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 300
    new-instance v2, Llewa/util/LocationUtil$AsyncQueryLocation;

    invoke-direct {v2}, Llewa/util/LocationUtil$AsyncQueryLocation;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    aput-object p1, v4, v0

    new-instance v5, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    :goto_0
    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v1

    const/4 v0, 0x3

    aput-object p3, v4, v0

    invoke-virtual {v2, v3, v4}, Llewa/util/LocationUtil$AsyncQueryLocation;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 301
    return-void

    :cond_0
    move v0, v1

    .line 300
    goto :goto_0
.end method

.method private static isNumeric(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 104
    const-string v0, "\\d*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
