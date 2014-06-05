.class public Lcom/tencent/qqpim/sdk/object/sms/Conversation;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/object/sms/IConversation;
.implements Ljava/lang/Comparable;


# static fields
.field public static COLUMN_NETWORK_MODE:Ljava/lang/String;


# instance fields
.field private _id:J

.field private attachmentInfo:Ljava/lang/String;

.field private date:J

.field private error:I

.field private hasAttachment:Z

.field private itemCache:Lcom/tencent/qqpim/sdk/object/sms/ConversationItem;

.field private mMark:I

.field private mMatchLength:[I

.field private mStartPos:[I

.field private msgCount:I

.field private names:Ljava/lang/String;

.field private phoneNums:Ljava/lang/String;

.field private read:I

.field private recipientIds:Ljava/lang/String;

.field private simSlotPos:I

.field private snippet:Ljava/lang/String;

.field private snippetcs:I

.field private status:I

.field private threadType:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->COLUMN_NETWORK_MODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->simSlotPos:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tencent/qqpim/sdk/object/sms/Conversation;)I
    .locals 2

    iget v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->mMark:I

    iget v1, p1, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->mMark:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->mMark:I

    iget v1, p1, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->mMark:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/tencent/qqpim/sdk/object/sms/Conversation;

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->compareTo(Lcom/tencent/qqpim/sdk/object/sms/Conversation;)I

    move-result v0

    return v0
.end method

.method public getAttachmentInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->attachmentInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->date:J

    return-wide v0
.end method

.method public getError()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->error:I

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->_id:J

    return-wide v0
.end method

.method public getItemCache()Lcom/tencent/qqpim/sdk/object/sms/ConversationItem;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->itemCache:Lcom/tencent/qqpim/sdk/object/sms/ConversationItem;

    return-object v0
.end method

.method public getMark()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->mMark:I

    return v0
.end method

.method public getMatchLength()[I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->mMatchLength:[I

    return-object v0
.end method

.method public getMsgCount()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->msgCount:I

    return v0
.end method

.method public getNames()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->names:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNums()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->phoneNums:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->read:I

    return v0
.end method

.method public getRecipientIds()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->recipientIds:Ljava/lang/String;

    return-object v0
.end method

.method public getSimSlotPos()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->simSlotPos:I

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->snippet:Ljava/lang/String;

    return-object v0
.end method

.method public getSnippetcs()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->snippetcs:I

    return v0
.end method

.method public getStartPos()[I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->mStartPos:[I

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->status:I

    return v0
.end method

.method public getThreadType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->threadType:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->type:I

    return v0
.end method

.method public hasAttachment()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->hasAttachment:Z

    return v0
.end method

.method public setAttachmentInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->attachmentInfo:Ljava/lang/String;

    return-void
.end method

.method public setDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->date:J

    return-void
.end method

.method public setError(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->error:I

    return-void
.end method

.method public setHasAttachment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->hasAttachment:Z

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->_id:J

    return-void
.end method

.method public setItemCache(Lcom/tencent/qqpim/sdk/object/sms/ConversationItem;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->itemCache:Lcom/tencent/qqpim/sdk/object/sms/ConversationItem;

    return-void
.end method

.method public setMark(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->mMark:I

    return-void
.end method

.method public setMatchLength([I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->mMatchLength:[I

    return-void
.end method

.method public setMsgCount(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->msgCount:I

    return-void
.end method

.method public setNames(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->names:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNums(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->phoneNums:Ljava/lang/String;

    return-void
.end method

.method public setRead(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->read:I

    return-void
.end method

.method public setRecipientIds(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->recipientIds:Ljava/lang/String;

    return-void
.end method

.method public setSimSlotPos(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->simSlotPos:I

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->snippet:Ljava/lang/String;

    return-void
.end method

.method public setSnippetcs(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->snippetcs:I

    return-void
.end method

.method public setStartPos([I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->mStartPos:[I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->status:I

    return-void
.end method

.method public setThreadType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->threadType:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/sdk/object/sms/Conversation;->type:I

    return-void
.end method
