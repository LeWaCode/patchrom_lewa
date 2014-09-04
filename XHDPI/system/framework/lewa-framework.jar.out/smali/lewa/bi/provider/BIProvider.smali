.class public Llewa/bi/provider/BIProvider;
.super Landroid/content/ContentProvider;
.source "BIProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/bi/provider/BIProvider$SqlArguments;,
        Llewa/bi/provider/BIProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final APPUSAGE:I = 0x65

.field private static final DATABASE_NAME:Ljava/lang/String; = "lewabi.db"

.field private static final DATABASE_VERSION:I = 0x4

.field private static final DEVICE_FIRST:I = 0x67

.field private static final EVENT:I = 0x66

.field private static final MARKET_INSTALL:I = 0x68

.field public static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field public static final TABLE_APPSUAGE:Ljava/lang/String; = "appusage"

.field public static final TABLE_DEVICE_FIRST:Ljava/lang/String; = "devicefirst"

.field public static final TABLE_EVENT:Ljava/lang/String; = "event"

.field public static final TABLE_EVENTMAP:Ljava/lang/String; = "eventmap"

.field public static final TABLE_MARKET_INSTALL:Ljava/lang/String; = "marketinstall"

.field private static final TAG:Ljava/lang/String; = "BIProvider"

.field private static final mUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Llewa/bi/provider/BIProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Llewa/bi/provider/BIProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 65
    sget-object v0, Llewa/bi/provider/BIProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lewa.provider.bi"

    const-string v2, "appusage"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v0, Llewa/bi/provider/BIProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lewa.provider.bi"

    const-string v2, "event"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Llewa/bi/provider/BIProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lewa.provider.bi"

    const-string v2, "devicefirst"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    sget-object v0, Llewa/bi/provider/BIProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lewa.provider.bi"

    const-string v2, "marketinstall"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 241
    return-void
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 235
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    :cond_0
    invoke-virtual {p0}, Llewa/bi/provider/BIProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 239
    :cond_1
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 207
    new-instance v0, Llewa/bi/provider/BIProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Llewa/bi/provider/BIProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 209
    .local v0, args:Llewa/bi/provider/BIProvider$SqlArguments;
    iget-object v3, p0, Llewa/bi/provider/BIProvider;->mOpenHelper:Llewa/bi/provider/BIProvider$DatabaseHelper;

    invoke-virtual {v3}, Llewa/bi/provider/BIProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 210
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Llewa/bi/provider/BIProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Llewa/bi/provider/BIProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Llewa/bi/provider/BIProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 212
    .local v1, count:I
    if-lez v1, :cond_0

    .line 213
    invoke-direct {p0, p1}, Llewa/bi/provider/BIProvider;->sendNotify(Landroid/net/Uri;)V

    .line 216
    :cond_0
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 161
    new-instance v0, Llewa/bi/provider/BIProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Llewa/bi/provider/BIProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 162
    .local v0, args:Llewa/bi/provider/BIProvider$SqlArguments;
    iget-object v1, v0, Llewa/bi/provider/BIProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Llewa/bi/provider/BIProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Llewa/bi/provider/BIProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v4, 0x0

    .line 185
    new-instance v0, Llewa/bi/provider/BIProvider$SqlArguments;

    invoke-direct {v0, p1}, Llewa/bi/provider/BIProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 186
    .local v0, args:Llewa/bi/provider/BIProvider$SqlArguments;
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_0

    .line 187
    const-string v5, "BIProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " table:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Llewa/bi/provider/BIProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " initialValues:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v5, p0, Llewa/bi/provider/BIProvider;->mOpenHelper:Llewa/bi/provider/BIProvider$DatabaseHelper;

    invoke-virtual {v5}, Llewa/bi/provider/BIProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 191
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v0, Llewa/bi/provider/BIProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 192
    .local v2, rowId:J
    sget-boolean v5, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v5, :cond_1

    .line 193
    const-string v5, "BIProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rowId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_2

    .line 196
    monitor-exit p0

    .line 202
    :goto_0
    return-object v4

    .line 198
    :cond_2
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 199
    invoke-direct {p0, p1}, Llewa/bi/provider/BIProvider;->sendNotify(Landroid/net/Uri;)V

    .line 200
    monitor-exit p0

    move-object v4, p1

    .line 202
    goto :goto_0

    .line 200
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #rowId:J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 155
    new-instance v0, Llewa/bi/provider/BIProvider$DatabaseHelper;

    invoke-virtual {p0}, Llewa/bi/provider/BIProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Llewa/bi/provider/BIProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llewa/bi/provider/BIProvider;->mOpenHelper:Llewa/bi/provider/BIProvider$DatabaseHelper;

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 172
    iget-object v2, p0, Llewa/bi/provider/BIProvider;->mOpenHelper:Llewa/bi/provider/BIProvider$DatabaseHelper;

    invoke-virtual {v2}, Llewa/bi/provider/BIProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 173
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 174
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v8, Llewa/bi/provider/BIProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Llewa/bi/provider/BIProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 176
    .local v8, args:Llewa/bi/provider/BIProvider$SqlArguments;
    iget-object v2, v8, Llewa/bi/provider/BIProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 177
    iget-object v3, v8, Llewa/bi/provider/BIProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Llewa/bi/provider/BIProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 179
    .local v9, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Llewa/bi/provider/BIProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 180
    return-object v9
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 221
    iget-object v3, p0, Llewa/bi/provider/BIProvider;->mOpenHelper:Llewa/bi/provider/BIProvider$DatabaseHelper;

    invoke-virtual {v3}, Llewa/bi/provider/BIProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 222
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Llewa/bi/provider/BIProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 223
    .local v2, match:I
    const/4 v0, 0x0

    .line 225
    .local v0, count:I
    packed-switch v2, :pswitch_data_0

    .line 231
    :goto_0
    return v0

    .line 227
    :pswitch_0
    const-string v3, "appusage"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
