.class public Lcom/tencent/qqpim/sdk/defines/VCard4SMS;
.super Lcom/tencent/qqpim/sdk/defines/VCard;


# static fields
.field private static final INBOX_STRING:Ljava/lang/String; = "INBOX"

.field private static final MY_FOLDER_STRING:Ljava/lang/String; = "MYFOLDERS"

.field private static final PDU_RECV_STRING:Ljava/lang/String; = "0"

.field private static final PDU_SEND_STRING:Ljava/lang/String; = "2"

.field private static final PDU_STRING:Ljava/lang/String; = "PDU"

.field private static final SENT_STRING:Ljava/lang/String; = "SENT"

.field private static final TAG:Ljava/lang/String; = "VCard4SMS"

.field private static final messageBeginPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "BEGIN:VMESSAGE"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->messageBeginPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpim/sdk/defines/VCard;-><init>()V

    return-void
.end method


# virtual methods
.method check4contact(Lcom/tencent/qqpim/sdk/object/d;Ljava/lang/StringBuilder;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method check4sms(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/object/d;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/tencent/qqpim/sdk/object/sms/SYSSms;

    if-eqz v2, :cond_1

    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FOLDER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v4}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MYFOLDERS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p2, p0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->mFolderRecord:Lcom/tencent/qqpim/sdk/object/d;

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PDU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->mFolderRecord:Lcom/tencent/qqpim/sdk/object/d;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v2}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v3, "FOLDER"

    invoke-virtual {v2, v1, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->mFolderRecord:Lcom/tencent/qqpim/sdk/object/d;

    invoke-virtual {v3, v0}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->mFolderRecord:Lcom/tencent/qqpim/sdk/object/d;

    invoke-virtual {p2, v4}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "SENT"

    invoke-virtual {v2, v4, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    :goto_1
    invoke-interface {p1, v2}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string v0, "INBOX"

    invoke-virtual {v2, v4, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    goto :goto_1
.end method

.method composeBasicVcard(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Z)[B
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->mStrVcard:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getEntityType()Lcom/tencent/qqpim/sdk/interfaces/b;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/sdk/interfaces/b;->b:Lcom/tencent/qqpim/sdk/interfaces/b;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->mStrVcard:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->mStrVcard:Ljava/lang/StringBuilder;

    const-string v2, "BEGIN:VMESSAGE\r\nVERSION:1.0\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToFirst()Z

    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->mStrVcard:Ljava/lang/StringBuilder;

    const-string v2, "END:VMESSAGE\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->getCurrentValue()Lcom/tencent/qqpim/sdk/object/d;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "INFORMATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";ENCODING=BASE64:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/sdk/utils/QQPimUtils;->getBase64CodeFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    invoke-interface {p1}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->moveToNext()Z

    goto :goto_1

    :cond_5
    const-string v3, "SENDNAME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez p2, :cond_4

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v5}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v2, "VCard4SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "composeBasicVcard():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method parseVcard2Entity(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v3, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->messageBeginPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/tencent/qqpim/sdk/object/sms/SYSSms;

    invoke-direct {v0}, Lcom/tencent/qqpim/sdk/object/sms/SYSSms;-><init>()V

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->mStrVcard:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v1, v0}, Lcom/tencent/qqpim/sdk/defines/VCard4SMS;->parse(Ljava/lang/String;Ljava/io/BufferedReader;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_0
.end method
