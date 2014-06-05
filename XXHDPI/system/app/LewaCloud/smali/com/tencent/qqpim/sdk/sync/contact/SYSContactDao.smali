.class public abstract Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;
.implements Lcom/tencent/qqpim/sdk/interfaces/g;


# static fields
.field private static final TAG:Ljava/lang/String; = "SYSContactDao"

.field protected static contentResolver:Landroid/content/ContentResolver;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDao;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;
    .locals 3

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/adaptive/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->b()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "IDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " IDao contact is null model is"

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

    new-instance v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-static {p0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/adaptive/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/adaptive/b/a;->a(Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao;)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getPeopleNames(Landroid/content/Context;[Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/tencent/wscl/MachineInfoUtil;->isSDKVersionBelow2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV1;->getPeopleNames([Ljava/lang/String;Ljava/util/HashMap;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qqpim/sdk/sync/contact/SYSContactDaoV2;->getPeopleNames([Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SYSContactDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPeopleNames e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/qqpim/sdk/utils/log/Plog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract addContactPhoto(Ljava/lang/String;[B)Ljava/lang/String;
.end method

.method public abstract addContactPhotoBatch(Ljava/util/List;)Z
.end method

.method public abstract delAllContactNotFilterAccountAndName()Lcom/tencent/qqpim/sdk/accesslayer/interfaces/basic/IDao$ENUM_IDaoReturnValue;
.end method

.method public abstract delContactPhotoBatch(Ljava/util/List;)Z
.end method

.method public abstract getAllEntityIdWithPhoto()Ljava/util/List;
.end method

.method public abstract getContactPhoto(Ljava/lang/String;)[B
.end method

.method public getEmptyContactCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSelectionString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p1

    add-int/lit8 v2, v0, -0x1

    if-lez v2, :cond_0

    const-string v0, "_id IN ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-le v0, v2, :cond_1

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v0, v2, :cond_2

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected interpretGroupNames(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, ","

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    move v7, v0

    move-object v0, v1

    move v1, v7

    :goto_1
    const/4 v4, -0x1

    if-ne v4, v1, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v3, -0x1

    if-gt v5, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method protected abstract query(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;
.end method

.method public abstract queryBatch(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/LinkedList;
.end method

.method public abstract queryBatch()Ljava/util/List;
.end method

.method public abstract queryBatch(Ljava/util/List;Lcom/tencent/qqpim/sdk/interfaces/c;)Ljava/util/List;
.end method

.method public abstract queryBatch([Ljava/lang/String;Lcom/tencent/qqpim/sdk/interfaces/c;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
.end method

.method public abstract queryContactsOnlyPhoto(Ljava/util/List;)[Lcom/tencent/qqpim/sdk/interfaces/IEntity;
.end method

.method public abstract updateContactPhoto(Ljava/lang/String;[B)Z
.end method
