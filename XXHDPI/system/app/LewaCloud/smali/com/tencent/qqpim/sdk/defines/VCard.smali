.class public abstract Lcom/tencent/qqpim/sdk/defines/VCard;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/interfaces/i;


# static fields
.field private static final TAG:Ljava/lang/String; = "VCard"

.field protected static final UTF8:Ljava/lang/String; = "UTF-8"


# instance fields
.field protected mFolderRecord:Lcom/tencent/qqpim/sdk/object/d;

.field protected mStrLine:Ljava/lang/StringBuilder;

.field protected mStrVcard:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mFolderRecord:Lcom/tencent/qqpim/sdk/object/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mStrVcard:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mStrLine:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static getVCard(I)Lcom/tencent/qqpim/sdk/defines/VCard;
    .locals 3

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    move-object v0, v1

    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/defines/VCard;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_VCARD;->E_CLASS_INDEX_VCARD4CONTACT:Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_VCARD;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_VCARD;->toInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->getVCardClassName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_VCARD;->E_CLASS_INDEX_VCARD4SMS:Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_VCARD;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_VCARD;->toInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->getVCardClassName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_VCARD;->E_CLASS_INDEX_VCARD4CALLLOG:Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_VCARD;

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/defines/ClassDefiner$E_CLASS_INDEXS_VCARD;->toInt()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/defines/ClassDefiner;->getVCardClassName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x200 -> :sswitch_1
        0x400 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method abstract check4contact(Lcom/tencent/qqpim/sdk/object/d;Ljava/lang/StringBuilder;)Z
.end method

.method abstract check4sms(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/object/d;)Z
.end method

.method abstract composeBasicVcard(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Z)[B
.end method

.method public composeVcard(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqpim/sdk/defines/VCard;->composeBasicVcard(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public composeVcard4LocalSync(Lcom/tencent/qqpim/sdk/interfaces/IEntity;)[B
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqpim/sdk/defines/VCard;->composeBasicVcard(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Z)[B

    move-result-object v0

    return-object v0
.end method

.method parse(Ljava/lang/String;Ljava/io/BufferedReader;Lcom/tencent/qqpim/sdk/interfaces/IEntity;)V
    .locals 10

    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "VERSION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-ge v5, v0, :cond_7

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v5, -0x1

    :goto_2
    const-string v2, "END"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v6, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v6}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/tencent/qqpim/sdk/defines/VCard;->parseVcardLabel2List(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/tencent/qqpim/sdk/object/d;->a(Z)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mStrVcard:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v3, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mStrVcard:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v1, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mStrVcard:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_4

    if-eqz v2, :cond_e

    :cond_4
    :goto_4
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_5
    if-eqz v3, :cond_d

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v0}, Lcom/tencent/qqpim/sdk/defines/VCard;->check4contact(Lcom/tencent/qqpim/sdk/object/d;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/Base64;->decodeBase64([B)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_5
    invoke-virtual {p0, p3, v6}, Lcom/tencent/qqpim/sdk/defines/VCard;->check4sms(Lcom/tencent/qqpim/sdk/interfaces/IEntity;Lcom/tencent/qqpim/sdk/object/d;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p3, v6}, Lcom/tencent/qqpim/sdk/interfaces/IEntity;->putValue(Lcom/tencent/qqpim/sdk/object/d;)V

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "ENCODING=BASE64"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v3, 0x1

    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v8, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mStrVcard:Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_b
    iget-object v8, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    iget-object v1, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_d
    if-eqz v2, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/sdk/utils/QuotedPrintable;->decode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v6, v1, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    const-string v1, "VCard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parseVcard():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/defines/VCard;->mStrVcard:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    goto/16 :goto_5
.end method

.method public parseVcard(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/sdk/defines/VCard;->parseVcard2Entity(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public parseVcard([B)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/sdk/defines/VCard;->parseVcard2Entity(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;

    move-result-object v0

    return-object v0
.end method

.method abstract parseVcard2Entity(Ljava/lang/String;)Lcom/tencent/qqpim/sdk/interfaces/IEntity;
.end method

.method parseVcardLabel2List(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/ArrayList;
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "OTHER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_1
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/util/ArrayList;

    array-length v2, v5

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    move v2, v0

    :goto_1
    array-length v4, v5

    if-lt v2, v4, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    move-object v0, v3

    goto :goto_0

    :cond_4
    aget-object v4, v5, v2

    const-string v6, "PREF"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    aget-object v4, v5, v2

    const-string v6, "X-CUSTOM="

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    aget-object v4, v5, v2

    const/16 v6, 0x9

    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/qqpim/sdk/utils/Base64;->decodeBase64([B)[B

    move-result-object v4

    const-string v7, "UTF-8"

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    const-string v6, "VCard"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "parseVcardLabel():"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    aget-object v4, v5, v2

    const-string v6, "CHARSET="

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    aget-object v4, v5, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
