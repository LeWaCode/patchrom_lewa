.class public interface abstract Lcom/tencent/qqpim/sdk/object/sms/IConversation;
.super Ljava/lang/Object;


# static fields
.field public static final COLUMN_ATTACHMENT_INFO:Ljava/lang/String; = "attachment_info"

.field public static final COLUMN_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_ERROR:Ljava/lang/String; = "error"

.field public static final COLUMN_HASATTACHMENT:Ljava/lang/String; = "has_attachment"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_MSGCOUNT:Ljava/lang/String; = "message_count"

.field public static final COLUMN_READ:Ljava/lang/String; = "read"

.field public static final COLUMN_RECIPIENTIDS:Ljava/lang/String; = "recipient_ids"

.field public static final COLUMN_SNIPPET:Ljava/lang/String; = "snippet"

.field public static final COLUMN_SNIPPETCS:Ljava/lang/String; = "snippet_cs"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"


# virtual methods
.method public abstract getAttachmentInfo()Ljava/lang/String;
.end method

.method public abstract getDate()J
.end method

.method public abstract getError()I
.end method

.method public abstract getId()J
.end method

.method public abstract getItemCache()Lcom/tencent/qqpim/sdk/object/sms/ConversationItem;
.end method

.method public abstract getMark()I
.end method

.method public abstract getMatchLength()[I
.end method

.method public abstract getMsgCount()I
.end method

.method public abstract getNames()Ljava/lang/String;
.end method

.method public abstract getPhoneNums()Ljava/lang/String;
.end method

.method public abstract getRead()I
.end method

.method public abstract getRecipientIds()Ljava/lang/String;
.end method

.method public abstract getSimSlotPos()I
.end method

.method public abstract getSnippet()Ljava/lang/String;
.end method

.method public abstract getSnippetcs()I
.end method

.method public abstract getStartPos()[I
.end method

.method public abstract getStatus()I
.end method

.method public abstract getThreadType()I
.end method

.method public abstract getType()I
.end method

.method public abstract hasAttachment()Z
.end method

.method public abstract setItemCache(Lcom/tencent/qqpim/sdk/object/sms/ConversationItem;)V
.end method

.method public abstract setMark(I)V
.end method

.method public abstract setMatchLength([I)V
.end method

.method public abstract setNames(Ljava/lang/String;)V
.end method

.method public abstract setPhoneNums(Ljava/lang/String;)V
.end method

.method public abstract setStartPos([I)V
.end method
