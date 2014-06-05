.class public abstract Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;


# static fields
.field private static final COLUMN_CANONICAL_ADDRESSES_ADDRESS:Ljava/lang/String; = "address"

.field private static final COLUMN_CANONICAL_ADDRESSES_ID:Ljava/lang/String; = "_id"

.field protected static final DB_COLUMN_ADDRESS:Ljava/lang/String; = "address"

.field protected static final DB_COLUMN_BODY:Ljava/lang/String; = "body"

.field protected static final DB_COLUMN_DATE:Ljava/lang/String; = "date"

.field protected static final DB_COLUMN_ID:Ljava/lang/String; = "_id"

.field protected static final DB_COLUMN_PERSON:Ljava/lang/String; = "person"

.field protected static final DB_COLUMN_PROTOCOL:Ljava/lang/String; = "protocol"

.field protected static final DB_COLUMN_READ:Ljava/lang/String; = "read"

.field protected static final DB_COLUMN_SEEN:Ljava/lang/String; = "seen"

.field protected static final DB_COLUMN_THREAD_ID:Ljava/lang/String; = "thread_id"

.field protected static final DB_COLUMN_TYPE:Ljava/lang/String; = "type"

.field protected static final DEFAULT_ORDER:Ljava/lang/String; = "date desc"

.field protected static final MMS_URI:Ljava/lang/String; = "content://mms"

.field protected static final SMS_DRAFT_TYPE:Ljava/lang/String; = "3"

.field protected static final SMS_FAILED_TYPE:Ljava/lang/String; = "5"

.field protected static final SMS_INBOX_TYPE:Ljava/lang/String; = "1"

.field protected static final SMS_OUTBOX_TYPE:Ljava/lang/String; = "4"

.field protected static final SMS_QUEUED_YTPE:Ljava/lang/String; = "6"

.field protected static final SMS_SENT_TYPE:Ljava/lang/String; = "2"

.field protected static final SMS_URI:Ljava/lang/String; = "content://sms"

.field private static final TAG:Ljava/lang/String; = "SYSSmsDao"

.field protected static final TYPE_DRAFT:I = 0x3

.field protected static final TYPE_ERROR_SEND_BOX:I = 0x6

.field protected static final TYPE_OUTBOX:I = 0x4

.field protected static final TYPE_RECV_BOX:I = 0x1

.field protected static final TYPE_SENT_BOX:I = 0x2

.field protected static final TYPE_UNSENT:I = 0x5

.field private static final VCARD_DRAFT_TYPE:Ljava/lang/String; = "DRAFT"

.field private static final VCARD_INBOX_TYPE:Ljava/lang/String; = "INBOX"

.field private static final VCARD_OUTBOX_TYPE:Ljava/lang/String; = "OUTBOX"

.field private static final VCARD_SENT_TYPE:Ljava/lang/String; = "SENT"


# instance fields
.field private final URI_SMS_CONVERSATION:Landroid/net/Uri;

.field private addressColumnIndex:I

.field private bodyColumnIndex:I

.field private columnIndexMapped:Z

.field protected contentResolver:Landroid/content/ContentResolver;

.field protected context:Landroid/content/Context;

.field private dateColumnIndex:I

.field private dbTypeToVcardType:Landroid/util/SparseArray;

.field protected hasColumnSeen:Z

.field private idColumnIndex:I

.field private personColumnIndex:I

.field protected phoneToContactNameMap:Ljava/util/HashMap;

.field private protocolColumnIndex:I

.field protected smsUri:Landroid/net/Uri;

.field private threadIdColumnIndex:I

.field private typeColumnIndex:I

.field protected vcardTypeToDbType:Ljava/util/HashMap;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->URI_SMS_CONVERSATION:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->smsUri:Landroid/net/Uri;

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->idColumnIndex:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->addressColumnIndex:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->bodyColumnIndex:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->typeColumnIndex:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->protocolColumnIndex:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->threadIdColumnIndex:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->dateColumnIndex:I

    iput v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->personColumnIndex:I

    iput-boolean v2, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->columnIndexMapped:Z

    iput-boolean v2, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->hasColumnSeen:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private filtrationIllegalityThreadId(Ljava/util/List;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "[\\d+]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;
    .locals 3

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/adaptive/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->d()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "IDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " IDao sms is null model is"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionBelow2()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV1;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-static {p0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/adaptive/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->b(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDaoV2;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private putSmsIdToList(Ljava/util/List;Landroid/database/Cursor;IZ)Ljava/util/List;
    .locals 1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    :cond_2
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method private queryCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->contentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SYSSmsDao"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0
.end method

.method private querySmsIdBetweenTime(JJ)Landroid/database/Cursor;
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "date > "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and date < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getContentValues(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/content/ContentValues;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, ""

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "_id"

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->contentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->smsUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SYSSmsDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "add(), "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearPhoneNumberToNameCache()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->phoneToContactNameMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->phoneToContactNameMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 5

    if-nez p1, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->smsUri:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_0
.end method

.method public delete([Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteAll()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    return-object v0
.end method

.method public getAllEntityId(Ljava/util/List;Z)Ljava/util/List;
    .locals 12

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->returnGetAllEntityIdCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v0, v1, v6, v11}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->putSmsIdToList(Ljava/util/List;Landroid/database/Cursor;IZ)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    :cond_1
    return-object v8

    :cond_2
    invoke-static {p1}, Lcom/tencent/qqpim/sdk/utils/ListUtil;->filterEmptyElement(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->filtrationIllegalityThreadId(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    move-object v8, v0

    move v0, v6

    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit16 v1, v0, 0x384

    if-le v1, v9, :cond_3

    move v7, v9

    :goto_1
    invoke-interface {v10, v0, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getSelectionString(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v6

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v8, v0, v6, v11}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->putSmsIdToList(Ljava/util/List;Landroid/database/Cursor;IZ)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    move v0, v7

    goto :goto_0

    :cond_3
    add-int/lit16 v7, v0, 0x384

    goto :goto_1
.end method

.method protected getBuilderValuesDefault(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "address"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    return-void
.end method

.method protected getContactName_default(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method protected getContentValues(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/content/ContentValues;
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "read"

    const-string v1, "1"

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionLargerOrEquals2_2()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->hasColumnSeen:Z

    if-eqz v0, :cond_2

    const-string v0, "seen"

    const-string v1, "1"

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v1, v3

    move-object v2, v4

    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v1, :cond_10

    invoke-virtual {p0, v5}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getContentValuesDefault(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToNext()Z

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "FOLDER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->vcardTypeToDbType:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const-string v2, "SYSSmsDao"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getContentValues(), type = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v2, v6, :cond_7

    const/4 v2, 0x5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v2, v6, :cond_7

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v2, v6, :cond_7

    const/4 v2, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v2, v6, :cond_8

    :cond_7
    const-string v1, "SYSSmsDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getContentValues(), type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " drop"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_9
    const-string v2, "type"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v1

    move-object v1, v0

    move v0, v9

    :goto_2
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToNext()Z

    move-object v2, v1

    move v1, v0

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SENDER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v6, :cond_b

    const-string v0, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const-string v0, "address"

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_c
    const-string v0, "address"

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    move-object v1, v2

    goto :goto_2

    :cond_d
    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "SENDDATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {v6}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->getUTCTimeFromString(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v6, "date"

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_e
    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "INFORMATION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "body"

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    move v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_10
    if-eqz v2, :cond_0

    move-object v4, v5

    goto/16 :goto_0
.end method

.method protected getContentValuesDefault(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCoolpadPhoneNumsIndex(Landroid/database/Cursor;)I
    .locals 1

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getCoolpadPhoneNumsSms()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "* from canonical_addresses --"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getEntityIdBetweenTime(JJ)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->querySmsIdBetweenTime(JJ)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getFailedOrQueuedSmsCursor()Landroid/database/Cursor;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v5

    const-string v3, "type=? OR type=? OR type=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "4"

    aput-object v0, v4, v5

    const-string v0, "5"

    aput-object v0, v4, v6

    const/4 v0, 0x2

    const-string v5, "6"

    aput-object v5, v4, v0

    const-string v5, "date desc"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->queryCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getIdToNumFromCanonicalTable()Ljava/util/HashMap;
    .locals 8

    const/4 v3, -0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getCoolpadPhoneNumsSms()Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    invoke-virtual {p0, v4}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getCoolpadPhoneNumsIndex(Landroid/database/Cursor;)I

    move-result v5

    const-string v1, "address"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v1, 0x0

    if-eq v3, v5, :cond_7

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :goto_1
    if-eq v3, v6, :cond_3

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eq v3, v5, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    :cond_5
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "SYSSmsDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getConversationPhoneNums(), "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    move v2, v3

    goto :goto_1
.end method

.method public getPduSmsCursor()Landroid/database/Cursor;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v5

    const-string v3, "msg_box!=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "3"

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->queryCursor(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getSMSEntity(Landroid/database/Cursor;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 11

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->mapColumnIndex(Landroid/database/Cursor;)V

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->columnIndexMapped:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v3, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v3}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    new-instance v4, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v4}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    new-instance v5, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v5}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    new-instance v6, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v6}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    new-instance v7, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v7}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->idColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const-string v1, "FOLDER"

    invoke-virtual {v3, v0, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->typeColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->dbTypeToVcardType:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    invoke-virtual {v3, v1, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "SENDER"

    invoke-virtual {v4, v0, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->addressColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->hasDeliveryStatus(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-eq v1, v9, :cond_5

    const/4 v1, 0x5

    if-eq v1, v9, :cond_5

    const/4 v1, 0x4

    if-eq v1, v9, :cond_5

    const/4 v1, 0x3

    if-ne v1, v9, :cond_6

    :cond_5
    const-string v0, "SYSSmsDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSMSEntity(), type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " drop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionBelow2()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    const/4 v0, 0x3

    if-ne v9, v0, :cond_9

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getSMSEntityDefault_Str(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    invoke-virtual {v4, v0, v2}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "SENDNAME"

    invoke-virtual {v5, v0, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->phoneToContactNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;

    const/4 v1, 0x3

    if-ne v9, v1, :cond_a

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {p0, v0, v10, v2, v1}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getSmsEntityDefault_Draft(Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_7
    move-object v1, v2

    :goto_4
    const/4 v0, 0x3

    if-ne v9, v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v2, v1, v0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getContactName_default(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->phoneToContactNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const/4 v1, 0x2

    invoke-virtual {v5, v1, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "SENDDATE"

    invoke-virtual {v6, v0, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->dateColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getUTCStringFromTime(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v6, v1, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "INFORMATION"

    invoke-virtual {v7, v0, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->bodyColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v7, v1, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    new-instance v0, Lcom/tencent/qqpim/sdk/object/sms/SYSSms;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/sms/SYSSms;-><init>()V

    invoke-virtual {v0, v8}, Lcom/tencent/qqpim/sdk/object/sms/SYSSms;->setId(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/object/sms/SYSSms;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    invoke-virtual {v0, v4}, Lcom/tencent/qqpim/sdk/object/sms/SYSSms;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    invoke-virtual {v0, v5}, Lcom/tencent/qqpim/sdk/object/sms/SYSSms;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    invoke-virtual {v0, v6}, Lcom/tencent/qqpim/sdk/object/sms/SYSSms;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    invoke-virtual {v0, v7}, Lcom/tencent/qqpim/sdk/object/sms/SYSSms;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSSmsDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSMSEntity(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSMSEntity():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_c
    move-object v1, v0

    goto/16 :goto_4

    :cond_d
    move-object v1, v0

    goto/16 :goto_1
.end method

.method protected getSMSEntityDefault_Str(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method protected getSelectionString(Ljava/util/List;Z)Ljava/lang/String;
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz p2, :cond_0

    mul-int/lit8 v0, v2, 0x31

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_2

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_1
    if-gtz v1, :cond_1

    const-string v0, "PHONE_NUMBERS_EQUAL(\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',address)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    shl-int/lit8 v0, v2, 0x4

    add-int/lit8 v0, v0, 0xd

    goto :goto_0

    :cond_1
    const-string v0, "PHONE_NUMBERS_EQUAL("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",address) OR "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const-string v0, "thread_id IN("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    :goto_3
    if-gtz v1, :cond_3

    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-eq v1, v2, :cond_4

    const/16 v0, 0x2c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3
.end method

.method protected getSmsEntityDefault_Draft(Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1, p3}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->lookupFirstContactNameByPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsNumBetweenTime(JJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->querySmsIdBetweenTime(JJ)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThreadCursor()Landroid/database/Cursor;
    .locals 7

    const/4 v6, 0x0

    const-string v0, "content://mms-sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "* from threads--"

    aput-object v4, v2, v3

    const-string v5, "date desc"

    move-object v3, v6

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method protected hasDeliveryStatus(Landroid/database/Cursor;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initHashMaps()V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->dbTypeToVcardType:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->vcardTypeToDbType:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->dbTypeToVcardType:Landroid/util/SparseArray;

    const-string v1, "INBOX"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->dbTypeToVcardType:Landroid/util/SparseArray;

    const-string v1, "SENT"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->dbTypeToVcardType:Landroid/util/SparseArray;

    const-string v1, "DRAFT"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->dbTypeToVcardType:Landroid/util/SparseArray;

    const-string v1, "OUTBOX"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->dbTypeToVcardType:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "OUTBOX"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->dbTypeToVcardType:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "OUTBOX"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->vcardTypeToDbType:Ljava/util/HashMap;

    const-string v1, "INBOX"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->vcardTypeToDbType:Ljava/util/HashMap;

    const-string v1, "SENT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->vcardTypeToDbType:Ljava/util/HashMap;

    const-string v1, "DRAFT"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->vcardTypeToDbType:Ljava/util/HashMap;

    const-string v1, "OUTBOX"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->phoneToContactNameMap:Ljava/util/HashMap;

    return-void
.end method

.method public isExisted(Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->smsUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->contentResolver:Landroid/content/ContentResolver;

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v7, v0

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method public isExsitOneSms()Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "address"

    aput-object v4, v2, v3

    const-string v3, "thread_id!=? AND (type==? OR type==?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "null"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    const-string v9, "1"

    aput-object v9, v4, v5

    const/4 v5, 0x2

    const-string v9, "2"

    aput-object v9, v4, v5

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v6

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_2
    return v0

    :catch_0
    move-exception v0

    const-string v1, "SYSSmsDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isExsitOneSms "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v8

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    move v0, v7

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_2
.end method

.method protected mapColumnIndex(Landroid/database/Cursor;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->columnIndexMapped:Z

    if-nez v0, :cond_0

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->idColumnIndex:I

    const-string v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->addressColumnIndex:I

    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->bodyColumnIndex:I

    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->typeColumnIndex:I

    const-string v0, "protocol"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->protocolColumnIndex:I

    const-string v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->threadIdColumnIndex:I

    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->dateColumnIndex:I

    const-string v0, "person"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->personColumnIndex:I

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->idColumnIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->addressColumnIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->bodyColumnIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->typeColumnIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->protocolColumnIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->threadIdColumnIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->dateColumnIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->personColumnIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->columnIndexMapped:Z

    :cond_0
    return-void
.end method

.method public query(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->smsUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->contentResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getSMSEntity(Landroid/database/Cursor;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public query(Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public query()Ljava/util/List;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->smsUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->mapColumnIndex(Landroid/database/Cursor;)V

    :cond_1
    iget-boolean v3, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->columnIndexMapped:Z

    if-nez v3, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getSMSEntity(Landroid/database/Cursor;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v2, v0

    goto :goto_0
.end method

.method public abstract queryBatch(Ljava/util/List;)Ljava/util/List;
.end method

.method public queryNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected returnGetAllEntityIdCursor()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    .locals 5

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->smsUri:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getContentValues(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Ljava/util/concurrent/atomic/AtomicInteger;)Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->delete(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->add(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->contentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_SUCCEED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ENTITY_NOT_FOUND:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSSmsDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/c/a/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    goto :goto_0
.end method

.method public update(Ljava/util/List;[I)Z
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;->ACTION_FAILED:Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->TCC_ERR_DATA_INVALID:Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/OperationReturnValue;->toInt()I

    move-result v0

    aput v0, p2, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->update(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/utils/DaoTools;->convertDaoRetToEngineRet(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;)I

    move-result v0

    aput v0, p2, v1

    goto :goto_1
.end method

.method public updateAllThreadTime()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->URI_SMS_CONVERSATION:Landroid/net/Uri;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "type=3"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
