.class public Llewa/track/HitStore;
.super Ljava/lang/Object;
.source "HitStore.java"

# interfaces
.implements Llewa/track/Hit$IHitStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/track/HitStore$DataBaseHelper;
    }
.end annotation


# static fields
.field private static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final CREATE_CUSTOM_VARIABLES_TABLE:Ljava/lang/String; = null

.field private static final CREATE_CUSTOM_VAR_CACHE_TABLE:Ljava/lang/String; = null

.field private static final CREATE_EVENTS_TABLE:Ljava/lang/String; = null

.field private static final CREATE_HITS_TABLE:Ljava/lang/String; = null

.field private static final CREATE_SESSION_TABLE:Ljava/lang/String; = null

.field private static final CUSTOMVAR_ID:Ljava/lang/String; = "cv_id"

.field private static final CUSTOMVAR_INDEX:Ljava/lang/String; = "cv_index"

.field private static final CUSTOMVAR_NAME:Ljava/lang/String; = "cv_name"

.field private static final CUSTOMVAR_SCOPE:Ljava/lang/String; = "cv_scope"

.field private static final CUSTOMVAR_VALUE:Ljava/lang/String; = "cv_value"

.field private static final DATABASE_NAME:Ljava/lang/String; = "lewa_analytics.db"

.field private static final DATABASE_VERSION:I = 0x5

.field private static final EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final HIT_ID:Ljava/lang/String; = "hit_id"

.field private static final HIT_STRING:Ljava/lang/String; = "hit_string"

.field private static final HIT_TIMESTAMP:Ljava/lang/String; = "hit_time"

.field private static final LABEL:Ljava/lang/String; = "label"

.field private static final MAX_HITS:I = 0x3e8

.field private static final STORE_ID:Ljava/lang/String; = "store_id"

.field private static final TABLE_HITS:Ljava/lang/String; = "hits"

.field private static final TABLE_SESSION:Ljava/lang/String; = "session"

.field public static final TAG:Ljava/lang/String; = "Tracker"

.field private static final TIMESTAMP_CURRENT:Ljava/lang/String; = "timestamp_current"

.field private static final TIMESTAMP_FIRST:Ljava/lang/String; = "timestamp_first"

.field private static final TIMESTAMP_PREVIOUS:Ljava/lang/String; = "timestamp_previous"

.field private static final USER_ID:Ljava/lang/String; = "user_id"

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static final VISITS:Ljava/lang/String; = "visits"


# instance fields
.field private databaseHelper:Llewa/track/HitStore$DataBaseHelper;

.field private volatile numStoredHits:I

.field private sampleRate:I

.field private sessionStarted:Z

.field private storeId:I

.field private timestampCurrent:J

.field private timestampFirst:J

.field private timestampPrevious:J

.field private useStoredVisitorVars:Z

.field private visitorCVCache:Llewa/track/CustomVariableBuffer;

.field private visits:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE events ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "event_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "user_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(256) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "account_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_first"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_previous"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_current"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "visits"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(256) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "category"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(256) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "action"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(256), "

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "label"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "value"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/track/HitStore;->CREATE_EVENTS_TABLE:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS session ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_first"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_previous"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "timestamp_current"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "visits"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "store_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/track/HitStore;->CREATE_SESSION_TABLE:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE custom_variables ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "event_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_index"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(64) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_name"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(64) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_value"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_scope"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/track/HitStore;->CREATE_CUSTOM_VARIABLES_TABLE:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS custom_var_cache ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "event_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_index"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(64) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_name"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' CHAR(64) NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_value"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "cv_scope"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/track/HitStore;->CREATE_CUSTOM_VAR_CACHE_TABLE:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS hits ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "hit_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' TEXT NOT NULL,"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "hit_string"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'%s\' INTEGER NOT NULL);"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "hit_time"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llewa/track/HitStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 136
    const-string v0, "lewa_analytics.db"

    invoke-direct {p0, p1, v0}, Llewa/track/HitStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "dbName"

    .prologue
    .line 140
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Llewa/track/HitStore;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "dbName"
    .parameter "dbVersion"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x64

    iput v0, p0, Llewa/track/HitStore;->sampleRate:I

    .line 144
    new-instance v0, Llewa/track/HitStore$DataBaseHelper;

    invoke-direct {v0, p1, p2, p3, p0}, Llewa/track/HitStore$DataBaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILlewa/track/HitStore;)V

    iput-object v0, p0, Llewa/track/HitStore;->databaseHelper:Llewa/track/HitStore$DataBaseHelper;

    .line 145
    invoke-virtual {p0}, Llewa/track/HitStore;->loadExistingSession()V

    .line 146
    invoke-virtual {p0}, Llewa/track/HitStore;->getVisitorVarBuffer()Llewa/track/CustomVariableBuffer;

    move-result-object v0

    iput-object v0, p0, Llewa/track/HitStore;->visitorCVCache:Llewa/track/CustomVariableBuffer;

    .line 147
    return-void
.end method

.method constructor <init>(Llewa/track/HitStore$DataBaseHelper;)V
    .locals 1
    .parameter "paramDataBaseHelper"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x64

    iput v0, p0, Llewa/track/HitStore;->sampleRate:I

    .line 150
    iput-object p1, p0, Llewa/track/HitStore;->databaseHelper:Llewa/track/HitStore$DataBaseHelper;

    .line 151
    invoke-virtual {p0}, Llewa/track/HitStore;->loadExistingSession()V

    .line 152
    invoke-virtual {p0}, Llewa/track/HitStore;->getVisitorVarBuffer()Llewa/track/CustomVariableBuffer;

    move-result-object v0

    iput-object v0, p0, Llewa/track/HitStore;->visitorCVCache:Llewa/track/CustomVariableBuffer;

    .line 153
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Llewa/track/HitStore;->CREATE_EVENTS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Llewa/track/HitStore;->CREATE_SESSION_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Llewa/track/HitStore;->CREATE_HITS_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Llewa/track/HitStore;->CREATE_CUSTOM_VARIABLES_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Llewa/track/HitStore;->CREATE_CUSTOM_VAR_CACHE_TABLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Llewa/track/HitStore;Llewa/track/Event;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Llewa/track/HitStore;->putEvent(Llewa/track/Event;Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method private static endTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4
    .parameter "paramSQLiteDatabase"

    .prologue
    .line 323
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    const/4 v1, 0x1

    .line 328
    :goto_0
    return v1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, localSQLiteException:Landroid/database/sqlite/SQLiteException;
    const-string v1, "Tracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception ending transaction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private putEvent(Llewa/track/Event;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4
    .parameter "paramEvent"
    .parameter "paramSQLiteDatabase"
    .parameter "paramBoolean"

    .prologue
    .line 333
    invoke-virtual {p1}, Llewa/track/Event;->isSessionInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    iget-wide v2, p0, Llewa/track/HitStore;->timestampFirst:J

    invoke-virtual {p1, v2, v3}, Llewa/track/Event;->setTimestampFirst(J)V

    .line 335
    iget-wide v2, p0, Llewa/track/HitStore;->timestampPrevious:J

    invoke-virtual {p1, v2, v3}, Llewa/track/Event;->setTimestampPrevious(J)V

    .line 336
    iget-wide v2, p0, Llewa/track/HitStore;->timestampCurrent:J

    invoke-virtual {p1, v2, v3}, Llewa/track/Event;->setTimestampCurrent(J)V

    .line 337
    iget v2, p0, Llewa/track/HitStore;->visits:I

    invoke-virtual {p1, v2}, Llewa/track/Event;->setVisits(I)V

    .line 339
    :cond_0
    invoke-virtual {p1}, Llewa/track/Event;->getUserId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 340
    iget v2, p0, Llewa/track/HitStore;->storeId:I

    invoke-virtual {p1, v2}, Llewa/track/Event;->setUserId(I)V

    .line 341
    :cond_1
    invoke-virtual {p0, p1, p2}, Llewa/track/HitStore;->putCustomVariables(Llewa/track/Event;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 342
    iget-object v2, p1, Llewa/track/Event;->accountId:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, arrayOfString1:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 344
    invoke-virtual {p0, p1, p2, p3}, Llewa/track/HitStore;->writeEventToDatabase(Llewa/track/Event;Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 349
    :cond_2
    return-void

    .line 346
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 347
    invoke-virtual {p0, p1, p2, p3}, Llewa/track/HitStore;->writeEventToDatabase(Llewa/track/Event;Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized deleteHit(J)V
    .locals 8
    .parameter "timestamp"

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget v1, p0, Llewa/track/HitStore;->numStoredHits:I

    iget-object v2, p0, Llewa/track/HitStore;->databaseHelper:Llewa/track/HitStore$DataBaseHelper;

    invoke-virtual {v2}, Llewa/track/HitStore$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "hits"

    const-string v4, "hit_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Llewa/track/HitStore;->numStoredHits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    monitor-exit p0

    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, localSQLiteException:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "Tracker"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    .end local v0           #localSQLiteException:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getCustomVariables(JLandroid/database/sqlite/SQLiteDatabase;)Llewa/track/CustomVariableBuffer;
    .locals 12
    .parameter "paramLong"
    .parameter "paramSQLiteDatabase"

    .prologue
    .line 249
    const/4 v8, 0x0

    .line 250
    .local v8, localCursor:Landroid/database/Cursor;
    new-instance v10, Llewa/track/CustomVariableBuffer;

    invoke-direct {v10}, Llewa/track/CustomVariableBuffer;-><init>()V

    .line 252
    .local v10, localCustomVariableBuffer:Llewa/track/CustomVariableBuffer;
    :try_start_0
    const-string v1, "custom_variables"

    const/4 v2, 0x0

    const-string v3, "event_id= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 255
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    new-instance v9, Llewa/track/CustomVariable;

    const-string v0, "cv_index"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "cv_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cv_value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cv_scope"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v9, v0, v1, v2, v3}, Llewa/track/CustomVariable;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 265
    .local v9, localCustomVariable:Llewa/track/CustomVariable;
    invoke-virtual {v10, v9}, Llewa/track/CustomVariableBuffer;->setCustomVariable(Llewa/track/CustomVariable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    .end local v9           #localCustomVariable:Llewa/track/CustomVariable;
    :catch_0
    move-exception v11

    .line 269
    .local v11, localSQLiteException:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "Tracker"

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    if-eqz v8, :cond_0

    .line 272
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 274
    .end local v11           #localSQLiteException:Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_1
    return-object v10

    .line 271
    :cond_1
    if-eqz v8, :cond_0

    .line 272
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 271
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 272
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method getDatabaseHelper()Llewa/track/HitStore$DataBaseHelper;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Llewa/track/HitStore;->databaseHelper:Llewa/track/HitStore$DataBaseHelper;

    return-object v0
.end method

.method public getNumStoredHits()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Llewa/track/HitStore;->numStoredHits:I

    return v0
.end method

.method public getNumStoredHitsFromDb()I
    .locals 6

    .prologue
    .line 472
    const/4 v3, 0x0

    .line 473
    .local v3, i:I
    const/4 v1, 0x0

    .line 474
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 476
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Llewa/track/HitStore;->databaseHelper:Llewa/track/HitStore$DataBaseHelper;

    invoke-virtual {v4}, Llewa/track/HitStore$DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 477
    const-string v4, "SELECT COUNT(*) from hits"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 478
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 479
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    long-to-int v3, v4

    .line 483
    :cond_0
    if-eqz v0, :cond_1

    .line 484
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 486
    :cond_1
    :goto_0
    return v3

    .line 480
    :catch_0
    move-exception v2

    .line 481
    .local v2, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v4, "Tracker"

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    if-eqz v0, :cond_1

    .line 484
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 483
    .end local v2           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 484
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 502
    iget-boolean v0, p0, Llewa/track/HitStore;->sessionStarted:Z

    if-nez v0, :cond_0

    .line 503
    const/4 v0, 0x0

    .line 504
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Llewa/track/HitStore;->timestampCurrent:J

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStoreId()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Llewa/track/HitStore;->storeId:I

    return v0
.end method

.method getTimestampCurrent()J
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Llewa/track/HitStore;->timestampCurrent:J

    return-wide v0
.end method

.method getTimestampFirst()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Llewa/track/HitStore;->timestampFirst:J

    return-wide v0
.end method

.method getTimestampPrevious()J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Llewa/track/HitStore;->timestampPrevious:J

    return-wide v0
.end method

.method public getVisitorCustomVar(I)Ljava/lang/String;
    .locals 3
    .parameter "paramInt"

    .prologue
    .line 278
    iget-object v1, p0, Llewa/track/HitStore;->visitorCVCache:Llewa/track/CustomVariableBuffer;

    invoke-virtual {v1, p1}, Llewa/track/CustomVariableBuffer;->getCustomVariableAt(I)Llewa/track/CustomVariable;

    move-result-object v0

    .line 280
    .local v0, localCustomVariable:Llewa/track/CustomVariable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llewa/track/CustomVariable;->getScope()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 281
    :cond_0
    const/4 v1, 0x0

    .line 282
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Llewa/track/CustomVariable;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getVisitorId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 494
    iget-boolean v0, p0, Llewa/track/HitStore;->sessionStarted:Z

    if-nez v0, :cond_0

    .line 495
    const/4 v0, 0x0

    .line 496
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%d.%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Llewa/track/HitStore;->storeId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Llewa/track/HitStore;->timestampFirst:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getVisitorVarBuffer()Llewa/track/CustomVariableBuffer;
    .locals 4

    .prologue
    .line 424
    :try_start_0
    iget-object v2, p0, Llewa/track/HitStore;->databaseHelper:Llewa/track/HitStore$DataBaseHelper;

    invoke-virtual {v2}, Llewa/track/HitStore$DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 426
    .local v0, localSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0}, Llewa/track/HitStore;->getVisitorVarBuffer(Landroid/database/sqlite/SQLiteDatabase;)Llewa/track/CustomVariableBuffer;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 430
    .end local v0           #localSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v2

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, localSQLiteException:Landroid/database/sqlite/SQLiteException;
    const-string v2, "Tracker"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v2, Llewa/track/CustomVariableBuffer;

    invoke-direct {v2}, Llewa/track/CustomVariableBuffer;-><init>()V

    goto :goto_0
.end method

.method getVisitorVarBuffer(Landroid/database/sqlite/SQLiteDatabase;)Llewa/track/CustomVariableBuffer;
    .locals 12
    .parameter "paramSQLiteDatabase"

    .prologue
    .line 434
    new-instance v10, Llewa/track/CustomVariableBuffer;

    invoke-direct {v10}, Llewa/track/CustomVariableBuffer;-><init>()V

    .line 435
    .local v10, localCustomVariableBuffer:Llewa/track/CustomVariableBuffer;
    const/4 v8, 0x0

    .line 437
    .local v8, localCursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "custom_var_cache"

    const/4 v2, 0x0

    const-string v3, "cv_scope= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 440
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    new-instance v9, Llewa/track/CustomVariable;

    const-string v0, "cv_index"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "cv_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cv_value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cv_scope"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v9, v0, v1, v2, v3}, Llewa/track/CustomVariable;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 450
    .local v9, localCustomVariable:Llewa/track/CustomVariable;
    invoke-virtual {v10, v9}, Llewa/track/CustomVariableBuffer;->setCustomVariable(Llewa/track/CustomVariable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    .end local v9           #localCustomVariable:Llewa/track/CustomVariable;
    :catch_0
    move-exception v11

    .line 454
    .local v11, localSQLiteException:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "Tracker"

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    if-eqz v8, :cond_0

    .line 457
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 459
    .end local v11           #localSQLiteException:Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_1
    return-object v10

    .line 456
    :cond_1
    if-eqz v8, :cond_0

    .line 457
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 456
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 457
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method getVisits()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Llewa/track/HitStore;->visits:I

    return v0
.end method

.method public loadExistingSession()V
    .locals 4

    .prologue
    .line 509
    :try_start_0
    iget-object v2, p0, Llewa/track/HitStore;->databaseHelper:Llewa/track/HitStore$DataBaseHelper;

    invoke-virtual {v2}, Llewa/track/HitStore$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 510
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0}, Llewa/track/HitStore;->loadExistingSession(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v1

    .line 512
    .local v1, ex:Landroid/database/sqlite/SQLiteException;
    const-string v2, "Tracker"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadExistingSession(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .parameter "db"

    .prologue
    .line 517
    const/4 v8, 0x0

    .line 519
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "session"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 520
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Llewa/track/HitStore;->timestampFirst:J

    .line 522
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Llewa/track/HitStore;->timestampPrevious:J

    .line 523
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Llewa/track/HitStore;->timestampCurrent:J

    .line 524
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Llewa/track/HitStore;->visits:I

    .line 525
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Llewa/track/HitStore;->storeId:I

    .line 526
    iget-wide v0, p0, Llewa/track/HitStore;->timestampFirst:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Llewa/track/HitStore;->sessionStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_1
    if-eqz v8, :cond_0

    .line 544
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 546
    :cond_0
    :goto_2
    return-void

    .line 526
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 528
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Llewa/track/HitStore;->sessionStarted:Z

    .line 529
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Llewa/track/HitStore;->storeId:I

    .line 530
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 531
    const/4 v8, 0x0

    .line 532
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 533
    .local v10, v:Landroid/content/ContentValues;
    const-string v0, "timestamp_first"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 534
    const-string v0, "timestamp_previous"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 535
    const-string v0, "timestamp_current"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 536
    const-string v0, "visits"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 537
    const-string v0, "store_id"

    iget v1, p0, Llewa/track/HitStore;->storeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 538
    const-string v0, "session"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 540
    .end local v10           #v:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 541
    .local v9, localSQLiteException:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v0, "Tracker"

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 543
    if-eqz v8, :cond_0

    .line 544
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 543
    .end local v9           #localSQLiteException:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 544
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public peekEvents(ILandroid/database/sqlite/SQLiteDatabase;I)[Llewa/track/Event;
    .locals 26
    .parameter "paramInt1"
    .parameter "paramSQLiteDatabase"
    .parameter "oldVersion"

    .prologue
    .line 213
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v22, localArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/track/Event;>;"
    const/16 v23, 0x0

    .line 216
    .local v23, localCursor:Landroid/database/Cursor;
    :try_start_0
    const-string v5, "events"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "event_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 218
    :goto_0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 219
    new-instance v4, Llewa/track/Event;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x4

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v12, 0x5

    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v14, 0x6

    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x7

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x9

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-direct/range {v4 .. v18}, Llewa/track/Event;-><init>(JLjava/lang/String;JJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    .local v4, localEvent:Llewa/track/Event;
    const/4 v5, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Llewa/track/Event;->setUserId(I)V

    .line 227
    const-string v5, "event_id"

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 231
    .local v20, l:J
    const/4 v5, 0x1

    move/from16 v0, p3

    if-le v0, v5, :cond_1

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Llewa/track/HitStore;->getCustomVariables(JLandroid/database/sqlite/SQLiteDatabase;)Llewa/track/CustomVariableBuffer;

    move-result-object v24

    .line 232
    .local v24, localObject1:Llewa/track/CustomVariableBuffer;
    :goto_1
    check-cast v24, Llewa/track/CustomVariableBuffer;

    .end local v24           #localObject1:Llewa/track/CustomVariableBuffer;
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Llewa/track/Event;->setCustomVariableBuffer(Llewa/track/CustomVariableBuffer;)V

    .line 233
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 235
    .end local v4           #localEvent:Llewa/track/Event;
    .end local v20           #l:J
    :catch_0
    move-exception v25

    .line 236
    .local v25, localSQLiteException:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v5, "Tracker"

    invoke-virtual/range {v25 .. v25}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v5, 0x0

    new-array v0, v5, [Llewa/track/Event;

    move-object/from16 v19, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    .local v19, arrayOfEvent:[Llewa/track/Event;
    if-eqz v23, :cond_0

    .line 241
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object/from16 v5, v19

    .line 243
    .end local v19           #arrayOfEvent:[Llewa/track/Event;
    .end local v25           #localSQLiteException:Landroid/database/sqlite/SQLiteException;
    :goto_2
    return-object v5

    .line 231
    .restart local v4       #localEvent:Llewa/track/Event;
    .restart local v20       #l:J
    :cond_1
    :try_start_2
    new-instance v24, Llewa/track/CustomVariableBuffer;

    invoke-direct/range {v24 .. v24}, Llewa/track/CustomVariableBuffer;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 240
    .end local v4           #localEvent:Llewa/track/Event;
    .end local v20           #l:J
    :catchall_0
    move-exception v5

    if-eqz v23, :cond_2

    .line 241
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v5

    .line 240
    :cond_3
    if-eqz v23, :cond_4

    .line 241
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Llewa/track/Event;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Llewa/track/Event;

    check-cast v5, [Llewa/track/Event;

    goto :goto_2
.end method

.method public peekHits()[Llewa/track/Hit;
    .locals 1

    .prologue
    .line 187
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Llewa/track/HitStore;->peekHits(I)[Llewa/track/Hit;

    move-result-object v0

    return-object v0
.end method

.method public peekHits(I)[Llewa/track/Hit;
    .locals 12
    .parameter "id"

    .prologue
    .line 192
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v11, hits:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/track/Hit;>;"
    const/4 v9, 0x0

    .line 195
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Llewa/track/HitStore;->databaseHelper:Llewa/track/HitStore$DataBaseHelper;

    invoke-virtual {v1}, Llewa/track/HitStore$DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 196
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "hits"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "hit_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 198
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    new-instance v1, Llewa/track/Hit;

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Llewa/track/Hit;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v10

    .line 202
    .local v10, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "Tracker"

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v1, 0x0

    new-array v1, v1, [Llewa/track/Hit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    if-eqz v9, :cond_0

    .line 206
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 208
    .end local v10           #ex:Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_1
    return-object v1

    .line 205
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    if-eqz v9, :cond_2

    .line 206
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Llewa/track/Hit;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Llewa/track/Hit;

    goto :goto_1

    .line 205
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 206
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method putCustomVariables(Llewa/track/Event;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "paramEvent"
    .parameter "paramSQLiteDatabase"

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x1

    .line 366
    :try_start_0
    invoke-virtual {p1}, Llewa/track/Event;->getCustomVariableBuffer()Llewa/track/CustomVariableBuffer;

    move-result-object v3

    .line 371
    .local v3, localCustomVariableBuffer:Llewa/track/CustomVariableBuffer;
    iget-boolean v6, p0, Llewa/track/HitStore;->useStoredVisitorVars:Z

    if-eqz v6, :cond_5

    .line 372
    if-nez v3, :cond_0

    .line 373
    new-instance v3, Llewa/track/CustomVariableBuffer;

    .end local v3           #localCustomVariableBuffer:Llewa/track/CustomVariableBuffer;
    invoke-direct {v3}, Llewa/track/CustomVariableBuffer;-><init>()V

    .line 374
    .restart local v3       #localCustomVariableBuffer:Llewa/track/CustomVariableBuffer;
    invoke-virtual {p1, v3}, Llewa/track/Event;->setCustomVariableBuffer(Llewa/track/CustomVariableBuffer;)V

    .line 376
    :cond_0
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-gt v1, v12, :cond_4

    .line 377
    iget-object v6, p0, Llewa/track/HitStore;->visitorCVCache:Llewa/track/CustomVariableBuffer;

    invoke-virtual {v6, v1}, Llewa/track/CustomVariableBuffer;->getCustomVariableAt(I)Llewa/track/CustomVariable;

    move-result-object v2

    .line 379
    .local v2, localCustomVariable:Llewa/track/CustomVariable;
    invoke-virtual {v3, v1}, Llewa/track/CustomVariableBuffer;->getCustomVariableAt(I)Llewa/track/CustomVariable;

    move-result-object v4

    .line 381
    .local v4, localObject:Llewa/track/CustomVariable;
    if-eqz v2, :cond_1

    if-eqz v4, :cond_2

    .line 376
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_2
    invoke-virtual {v3, v2}, Llewa/track/CustomVariableBuffer;->setCustomVariable(Llewa/track/CustomVariable;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 417
    .end local v1           #i:I
    .end local v2           #localCustomVariable:Llewa/track/CustomVariable;
    .end local v3           #localCustomVariableBuffer:Llewa/track/CustomVariableBuffer;
    .end local v4           #localObject:Llewa/track/CustomVariable;
    :catch_0
    move-exception v5

    .line 418
    .local v5, localSQLiteException:Landroid/database/sqlite/SQLiteException;
    const-string v6, "Tracker"

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .end local v5           #localSQLiteException:Landroid/database/sqlite/SQLiteException;
    :cond_3
    return-void

    .line 386
    .restart local v1       #i:I
    .restart local v3       #localCustomVariableBuffer:Llewa/track/CustomVariableBuffer;
    :cond_4
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, p0, Llewa/track/HitStore;->useStoredVisitorVars:Z

    .line 388
    .end local v1           #i:I
    :cond_5
    if-eqz v3, :cond_3

    .line 389
    const/4 v1, 0x1

    .restart local v1       #i:I
    :goto_2
    if-gt v1, v12, :cond_3

    .line 390
    invoke-virtual {v3, v1}, Llewa/track/CustomVariableBuffer;->isIndexAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 389
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 392
    :cond_6
    invoke-virtual {v3, v1}, Llewa/track/CustomVariableBuffer;->getCustomVariableAt(I)Llewa/track/CustomVariable;

    move-result-object v2

    .line 394
    .restart local v2       #localCustomVariable:Llewa/track/CustomVariable;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 395
    .local v4, localObject:Landroid/content/ContentValues;
    move-object v0, v4

    check-cast v0, Landroid/content/ContentValues;

    move-object v6, v0

    const-string v7, "event_id"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    move-object v0, v4

    check-cast v0, Landroid/content/ContentValues;

    move-object v6, v0

    const-string v7, "cv_index"

    invoke-virtual {v2}, Llewa/track/CustomVariable;->getIndex()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    move-object v0, v4

    check-cast v0, Landroid/content/ContentValues;

    move-object v6, v0

    const-string v7, "cv_name"

    invoke-virtual {v2}, Llewa/track/CustomVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    move-object v0, v4

    check-cast v0, Landroid/content/ContentValues;

    move-object v6, v0

    const-string v7, "cv_scope"

    invoke-virtual {v2}, Llewa/track/CustomVariable;->getScope()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    move-object v0, v4

    check-cast v0, Landroid/content/ContentValues;

    move-object v6, v0

    const-string v7, "cv_value"

    invoke-virtual {v2}, Llewa/track/CustomVariable;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v6, "custom_var_cache"

    check-cast v4, Landroid/content/ContentValues;

    .end local v4           #localObject:Landroid/content/ContentValues;
    const-string v7, "cv_index = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v2}, Llewa/track/CustomVariable;->getIndex()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p2, v6, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 409
    invoke-virtual {v2}, Llewa/track/CustomVariable;->getScope()I

    move-result v6

    if-ne v6, v11, :cond_7

    .line 410
    iget-object v6, p0, Llewa/track/HitStore;->visitorCVCache:Llewa/track/CustomVariableBuffer;

    invoke-virtual {v6, v2}, Llewa/track/CustomVariableBuffer;->setCustomVariable(Llewa/track/CustomVariable;)V

    goto :goto_3

    .line 413
    :cond_7
    iget-object v6, p0, Llewa/track/HitStore;->visitorCVCache:Llewa/track/CustomVariableBuffer;

    invoke-virtual {v2}, Llewa/track/CustomVariable;->getIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Llewa/track/CustomVariableBuffer;->clearCustomVariableAt(I)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public putEvent(Llewa/track/Event;)V
    .locals 6
    .parameter "paramEvent"

    .prologue
    .line 286
    iget v3, p0, Llewa/track/HitStore;->numStoredHits:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_1

    .line 287
    const-string v3, "Tracker"

    const-string v4, "Store full. Not storing last event."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget v3, p0, Llewa/track/HitStore;->sampleRate:I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_3

    .line 291
    invoke-virtual {p1}, Llewa/track/Event;->getUserId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    iget v3, p0, Llewa/track/HitStore;->storeId:I

    :goto_1
    rem-int/lit16 v3, v3, 0x2710

    iget v4, p0, Llewa/track/HitStore;->sampleRate:I

    mul-int/lit8 v4, v4, 0x64

    if-lt v3, v4, :cond_3

    .line 292
    invoke-static {}, Llewa/track/Tracker;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    const-string v3, "Tracker"

    const-string v4, "User has been sampled out. Aborting hit."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {p1}, Llewa/track/Event;->getUserId()I

    move-result v3

    goto :goto_1

    .line 296
    :cond_3
    monitor-enter p0

    .line 297
    const/4 v0, 0x0

    .line 299
    .local v0, localSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v3, p0, Llewa/track/HitStore;->databaseHelper:Llewa/track/HitStore$DataBaseHelper;

    invoke-virtual {v3}, Llewa/track/HitStore$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 305
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 306
    iget-boolean v3, p0, Llewa/track/HitStore;->sessionStarted:Z

    if-nez v3, :cond_4

    .line 307
    invoke-virtual {p0, v0}, Llewa/track/HitStore;->storeUpdatedSession(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 308
    :cond_4
    const/4 v3, 0x1

    invoke-direct {p0, p1, v0, v3}, Llewa/track/HitStore;->putEvent(Llewa/track/Event;Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 309
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 313
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 314
    invoke-static {v0}, Llewa/track/HitStore;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 317
    :cond_5
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 300
    :catch_0
    move-exception v2

    .line 301
    .local v2, localSQLiteException1:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v3, "Tracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t get db: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 310
    .end local v2           #localSQLiteException1:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    .line 311
    .local v1, localSQLiteException:Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v3, "Tracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putEventOuter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 313
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 314
    invoke-static {v0}, Llewa/track/HitStore;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z

    goto :goto_2

    .line 313
    .end local v1           #localSQLiteException:Landroid/database/sqlite/SQLiteException;
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 314
    invoke-static {v0}, Llewa/track/HitStore;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_6
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setSampleRate(I)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 584
    iput p1, p0, Llewa/track/HitStore;->sampleRate:I

    .line 585
    return-void
.end method

.method public declared-synchronized startNewVisit()V
    .locals 1

    .prologue
    .line 549
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Llewa/track/HitStore;->sessionStarted:Z

    .line 550
    invoke-virtual {p0}, Llewa/track/HitStore;->getNumStoredHitsFromDb()I

    move-result v0

    iput v0, p0, Llewa/track/HitStore;->numStoredHits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    monitor-exit p0

    return-void

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method storeUpdatedSession(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "paramSQLiteDatabase"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 554
    iget-object v3, p0, Llewa/track/HitStore;->databaseHelper:Llewa/track/HitStore$DataBaseHelper;

    invoke-virtual {v3}, Llewa/track/HitStore$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 555
    const-string v3, "session"

    invoke-virtual {p1, v3, v7, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 556
    iget-wide v3, p0, Llewa/track/HitStore;->timestampFirst:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 558
    .local v0, l:J
    iput-wide v0, p0, Llewa/track/HitStore;->timestampFirst:J

    .line 559
    iput-wide v0, p0, Llewa/track/HitStore;->timestampPrevious:J

    .line 560
    iput-wide v0, p0, Llewa/track/HitStore;->timestampCurrent:J

    .line 561
    iput v8, p0, Llewa/track/HitStore;->visits:I

    .line 569
    .end local v0           #l:J
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 570
    .local v2, localContentValues:Landroid/content/ContentValues;
    const-string v3, "timestamp_first"

    iget-wide v4, p0, Llewa/track/HitStore;->timestampFirst:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 572
    const-string v3, "timestamp_previous"

    iget-wide v4, p0, Llewa/track/HitStore;->timestampPrevious:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 574
    const-string v3, "timestamp_current"

    iget-wide v4, p0, Llewa/track/HitStore;->timestampCurrent:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 576
    const-string v3, "visits"

    iget v4, p0, Llewa/track/HitStore;->visits:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    const-string v3, "store_id"

    iget v4, p0, Llewa/track/HitStore;->storeId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    const-string v3, "session"

    invoke-virtual {p1, v3, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 579
    iput-boolean v8, p0, Llewa/track/HitStore;->sessionStarted:Z

    .line 580
    return-void

    .line 563
    .end local v2           #localContentValues:Landroid/content/ContentValues;
    :cond_0
    iget-wide v3, p0, Llewa/track/HitStore;->timestampCurrent:J

    iput-wide v3, p0, Llewa/track/HitStore;->timestampPrevious:J

    .line 564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Llewa/track/HitStore;->timestampCurrent:J

    .line 565
    iget-wide v3, p0, Llewa/track/HitStore;->timestampCurrent:J

    iget-wide v5, p0, Llewa/track/HitStore;->timestampPrevious:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 566
    iget-wide v3, p0, Llewa/track/HitStore;->timestampCurrent:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Llewa/track/HitStore;->timestampCurrent:J

    .line 567
    :cond_1
    iget v3, p0, Llewa/track/HitStore;->visits:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Llewa/track/HitStore;->visits:I

    goto :goto_0
.end method

.method writeEventToDatabase(Llewa/track/Event;Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 5
    .parameter "paramEvent"
    .parameter "paramSQLiteDatabase"
    .parameter "paramBoolean"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 354
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 355
    .local v0, localContentValues:Landroid/content/ContentValues;
    invoke-static {p1}, Llewa/track/HitBuilder;->constructHitRequestPath(Llewa/track/Event;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, str:Ljava/lang/String;
    const-string v2, "hit_string"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v4, "hit_time"

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 359
    const-string v2, "hits"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 360
    iget v2, p0, Llewa/track/HitStore;->numStoredHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Llewa/track/HitStore;->numStoredHits:I

    .line 361
    return-void

    .line 357
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
