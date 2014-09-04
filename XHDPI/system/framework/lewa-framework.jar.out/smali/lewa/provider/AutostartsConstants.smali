.class public Llewa/provider/AutostartsConstants;
.super Ljava/lang/Object;
.source "AutostartsConstants.java"


# static fields
.field public static final AUTOHORITY:Ljava/lang/String; = "com.lewa.providers.autostarts"

.field public static COLUMN_BLOCK_NAME_ID:Ljava/lang/String; = null

.field public static COLUMN_CLASS_NAME:Ljava/lang/String; = null

.field public static COLUMN_PACKAGE_NAME:Ljava/lang/String; = null

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.lewa.autostarts.providers"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.lewa.autostarts.providers"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DBNAME:Ljava/lang/String; = "autostartsDb"

.field public static final DEBUG:Z = true

.field public static final ITEM:I = 0x1

.field public static final ITEM_ID:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final TABLENAME:Ljava/lang/String; = "autostartsData"

.field public static final TAG:Ljava/lang/String; = "AutostartsConstants"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-string v0, "content://com.lewa.providers.autostarts/autostartsData"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/provider/AutostartsConstants;->CONTENT_URI:Landroid/net/Uri;

    .line 34
    const-string v0, "id"

    sput-object v0, Llewa/provider/AutostartsConstants;->COLUMN_BLOCK_NAME_ID:Ljava/lang/String;

    .line 36
    const-string v0, "pkgName"

    sput-object v0, Llewa/provider/AutostartsConstants;->COLUMN_PACKAGE_NAME:Ljava/lang/String;

    .line 38
    const-string v0, "className"

    sput-object v0, Llewa/provider/AutostartsConstants;->COLUMN_CLASS_NAME:Ljava/lang/String;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Llewa/provider/AutostartsConstants;->COLUMN_PACKAGE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Llewa/provider/AutostartsConstants;->COLUMN_CLASS_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Llewa/provider/AutostartsConstants;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnableComponentPermission(Landroid/content/Context;Landroid/content/ComponentName;I)Z
    .locals 11
    .parameter "mContext"
    .parameter "component"
    .parameter "newState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 47
    if-eqz p2, :cond_0

    if-eq p2, v8, :cond_0

    move v1, v8

    .line 72
    :goto_0
    return v1

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 52
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 54
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Llewa/provider/AutostartsConstants;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Llewa/provider/AutostartsConstants;->PROJECTION:[Ljava/lang/String;

    const-string v3, "%s = ? AND %s = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Llewa/provider/AutostartsConstants;->COLUMN_PACKAGE_NAME:Ljava/lang/String;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Llewa/provider/AutostartsConstants;->COLUMN_CLASS_NAME:Ljava/lang/String;

    aput-object v10, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 60
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 61
    const-string v1, "AutostartsConstants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PMS forbid to enable component:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    if-eqz v6, :cond_1

    .line 68
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v9

    goto :goto_0

    .line 67
    :cond_2
    if-eqz v6, :cond_3

    .line 68
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move v1, v8

    .line 72
    goto :goto_0

    .line 64
    :catch_0
    move-exception v7

    .line 65
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    if-eqz v6, :cond_3

    .line 68
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 67
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 68
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method
