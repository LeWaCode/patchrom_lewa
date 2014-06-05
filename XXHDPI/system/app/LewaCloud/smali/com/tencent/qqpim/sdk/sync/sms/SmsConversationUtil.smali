.class public Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;
.super Ljava/lang/Object;


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field public static final NAME_NUM_SPLITE_TOKEN:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "SmsConversationUtil"


# instance fields
.field private failedOrQueuedSmsSparseArray:Landroid/util/SparseIntArray;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field msgCountZeroCnt:I

.field private pduSparseArray:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->pduSparseArray:Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->failedOrQueuedSmsSparseArray:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private cleanSparseArray(Landroid/util/SparseIntArray;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    :cond_0
    return-void
.end method

.method private convertSnippetCharSet(Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->getSnippet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->extractEncStrFromCursor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static extractEncStrFromCursor(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_1
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SmsConversationUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "extractEncStrFromCursor t="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    goto :goto_1
.end method

.method private getConversationFromCursor(Landroid/database/Cursor;Z)Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;
    .locals 14

    new-instance v1, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;-><init>()V

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "date"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "message_count"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "recipient_ids"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "snippet"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "snippet_cs"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "read"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "type"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "error"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "has_attachment"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v11, v0, :cond_c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v0, "SmsConversationUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getConversationFromCursor threadId="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v12, v11

    invoke-virtual {v1, v12, v13}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->setId(J)V

    const/4 v0, -0x1

    if-eq v0, v2, :cond_0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->setDate(J)V

    :cond_0
    const/4 v0, 0x0

    const/4 v2, -0x1

    if-eq v2, v9, :cond_e

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v2, v0

    :goto_0
    const/4 v0, -0x1

    if-eq v3, v0, :cond_4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v3, "SmsConversationUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "cursor.getInt(messageCountIndex)= "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    iget v3, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->msgCountZeroCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->msgCountZeroCnt:I

    :cond_1
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->pduSparseArray:Landroid/util/SparseIntArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->pduSparseArray:Landroid/util/SparseIntArray;

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-lez v3, :cond_2

    sub-int/2addr v0, v3

    :cond_2
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->failedOrQueuedSmsSparseArray:Landroid/util/SparseIntArray;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->failedOrQueuedSmsSparseArray:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v11, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-lez v2, :cond_3

    sub-int/2addr v0, v2

    :cond_3
    const-string v2, "SmsConversationUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "msgCount= "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_4

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->setMsgCount(I)V

    :cond_4
    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/adaptive/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->e()Lcom/tencent/qqpim/sdk/adaptive/b/d;

    const/4 v0, -0x1

    if-eq v4, v0, :cond_5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->setRecipientIds(Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x0

    const/4 v2, -0x1

    if-eq v6, v2, :cond_6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->setSnippetcs(I)V

    :cond_6
    const/4 v2, -0x1

    if-eq v2, v5, :cond_7

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/adaptive/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->e()Lcom/tencent/qqpim/sdk/adaptive/b/d;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1, v5}, Lcom/tencent/qqpim/sdk/adaptive/b/d;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->setSnippet(Ljava/lang/String;)V

    const-string v2, "SmsConversationUtil"

    const-string v3, "getConversationFromCursor go"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->convertSnippetCharSet(Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->setSnippet(Ljava/lang/String;)V

    const-string v0, "SmsConversationUtil"

    const-string v2, "getConversationFromCursor end"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v0, -0x1

    if-eq v0, v7, :cond_8

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->setRead(I)V

    :cond_8
    const/4 v0, -0x1

    if-eq v0, v8, :cond_9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->setType(I)V

    :cond_9
    const/4 v0, -0x1

    if-eq v9, v0, :cond_a

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->setError(I)V

    :cond_a
    const/4 v0, -0x1

    if-eq v10, v0, :cond_b

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->setHasAttachment(Z)V

    :cond_b
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    goto :goto_1

    :cond_e
    move v2, v0

    goto/16 :goto_0
.end method

.method private getConversationPhoneNumsName(Ljava/util/List;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getIdToNumFromCanonicalTable()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->setConversationsAddressNum(Ljava/util/List;Ljava/util/HashMap;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_1

    invoke-direct {p0, v2, p1}, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->getPeopleNames(Ljava/util/HashMap;Ljava/util/List;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->getPhoneNums()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method private getFailedOrQueuedSms()Landroid/util/SparseIntArray;
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getFailedOrQueuedSmsCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->queryDbToBuildSparseArray(Landroid/database/Cursor;)Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method private getPduMms()Landroid/util/SparseIntArray;
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getPduSmsCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->queryDbToBuildSparseArray(Landroid/database/Cursor;)Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method private getPeopleNames(Ljava/util/HashMap;Ljava/util/List;)V
    .locals 10

    const/4 v3, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v2, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->getPeopleNames(Landroid/content/Context;[Ljava/lang/String;Ljava/util/HashMap;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/qqpim/sdk/object/sms/IConversation;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/object/sms/IConversation;->getPhoneNums()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/object/sms/IConversation;->getPhoneNums()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/object/sms/IConversation;->getPhoneNums()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v0, v7

    if-lez v0, :cond_0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    array-length v8, v7

    move v2, v3

    :goto_1
    if-lt v2, v8, :cond_2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/object/sms/IConversation;->setNames(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    aget-object v0, v7, v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    invoke-static {v0}, Lcom/tencent/wscl/TextUtil;->formatPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method private isExsitOneSms()Z
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->isExsitOneSms()Z

    move-result v0

    return v0
.end method

.method private queryDbToBuildSparseArray(Landroid/database/Cursor;)Landroid/util/SparseIntArray;
    .locals 7

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    move v0, v1

    move v2, v3

    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_1

    invoke-virtual {v5, v2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    add-int/2addr v0, v6

    invoke-virtual {v5, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    const/4 v0, 0x1

    move v2, v4

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5, v4, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v5, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    move-object v0, v5

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setConversationsAddressNum(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 11

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/qqpim/sdk/object/sms/IConversation;

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/adaptive/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->e()Lcom/tencent/qqpim/sdk/adaptive/b/d;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/object/sms/IConversation;->getRecipientIds()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/object/sms/IConversation;->getRecipientIds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1}, Lcom/tencent/qqpim/sdk/object/sms/IConversation;->getRecipientIds()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v0, v6

    if-lez v0, :cond_0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    array-length v7, v6

    move v2, v3

    :goto_1
    if-lt v2, v7, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/tencent/qqpim/sdk/object/sms/IConversation;->setPhoneNums(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    aget-object v0, v6, v2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v8, "SmsConversationUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getConversationPhoneNums(), "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public getConversationList()Ljava/util/List;
    .locals 8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->getPduMms()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->pduSparseArray:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->getFailedOrQueuedSms()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->failedOrQueuedSmsSparseArray:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->pduSparseArray:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    const-string v0, "SmsConversationUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->pduSparseArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->failedOrQueuedSmsSparseArray:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_1

    const-string v0, "SmsConversationUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->failedOrQueuedSmsSparseArray:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/tencent/qqpim/sdk/b/a;->a(ILandroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/sync/sms/SYSSmsDao;->getThreadCursor()Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v0, "SmsConversationUtil"

    const-string v2, "SMS CANT READ, CURSOR IS NULL"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->pduSparseArray:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->cleanSparseArray(Landroid/util/SparseIntArray;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->failedOrQueuedSmsSparseArray:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->cleanSparseArray(Landroid/util/SparseIntArray;)V

    return-object v1

    :cond_3
    const-string v0, "SmsConversationUtil"

    const-string v3, "cursor is not null"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->msgCountZeroCnt:I

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    add-int/lit8 v1, v2, 0x1

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v4, v0}, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->getConversationFromCursor(Landroid/database/Cursor;Z)Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    move-object v1, v3

    :goto_2
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_3
    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->getConversationPhoneNumsName(Ljava/util/List;)Z

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->msgCountZeroCnt:I

    if-ne v2, v0, :cond_7

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/sync/sms/SmsConversationUtil;->isExsitOneSms()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->setMsgCount(I)V

    goto :goto_4

    :cond_5
    :try_start_2
    const-string v0, "SmsConversationUtil"

    const-string v2, "getConversationFromCursor return null"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    :goto_5
    :try_start_3
    const-string v3, "SmsConversationUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getConversationList(), "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_6
    if-ltz v2, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/object/sms/SMSSummaryFromWupResp;->getMsgCount()I

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v0

    move v0, v1

    move-object v1, v3

    goto :goto_5

    :cond_9
    move v2, v1

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto/16 :goto_2
.end method
