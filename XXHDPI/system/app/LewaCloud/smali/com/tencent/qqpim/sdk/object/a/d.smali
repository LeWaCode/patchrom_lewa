.class public final Lcom/tencent/qqpim/sdk/object/a/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;


# instance fields
.field private b:Lcom/tencent/qqpim/sdk/object/a/b;

.field private c:[Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "N"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "TEL"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "EMAIL"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "PHOTO"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "FN"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "ADR"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "ORG"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "TITLE"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "X-TC-IM"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "NICKNAME"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "NOTE"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "URL"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "BDAY"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "X-FOCUS"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "CATEGORIES"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "ACCOUNTNAME"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "ACCOUNTTYPE"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    const-string v1, "RINGTONE"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qqpim/sdk/object/a/b;)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/d;->c:[Ljava/util/List;

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/object/a/d;->b:Lcom/tencent/qqpim/sdk/object/a/b;

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/d;->b:Lcom/tencent/qqpim/sdk/object/a/b;

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/object/a/b;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/d;->b:Lcom/tencent/qqpim/sdk/object/a/b;

    iget-object v0, v0, Lcom/tencent/qqpim/sdk/object/a/b;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/sdk/object/a/d;->a(Ljava/lang/String;)B

    move-result v0

    if-ltz v0, :cond_2

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/object/a/d;->c:[Ljava/util/List;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/object/a/d;->c:[Ljava/util/List;

    aget-object v4, v4, v0

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/tencent/qqpim/sdk/object/a/d;->c:[Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v4, v0

    :cond_1
    iget-object v4, p0, Lcom/tencent/qqpim/sdk/object/a/d;->c:[Ljava/util/List;

    aget-object v0, v4, v0

    int-to-byte v4, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)B
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/sdk/object/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(I)Ljava/util/List;
    .locals 4

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/d;->c:[Ljava/util/List;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/d;->c:[Ljava/util/List;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/d;->c:[Ljava/util/List;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/object/a/d;->b:Lcom/tencent/qqpim/sdk/object/a/b;

    iget-object v3, v3, Lcom/tencent/qqpim/sdk/object/a/b;->values:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/object/a/d;->b:Lcom/tencent/qqpim/sdk/object/a/b;

    iget-object v3, v3, Lcom/tencent/qqpim/sdk/object/a/b;->values:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 4

    const/4 v3, 0x2

    if-nez p0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->removePrex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qqpim/sdk/utils/PhoneNumberUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/tencent/qqpim/sdk/object/d;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-eqz p1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move-object p2, v2

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-static {p1, v0}, Lcom/tencent/qqpim/sdk/object/a/d;->a(Ljava/util/List;Lcom/tencent/qqpim/sdk/object/d;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object p2, v1

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Lcom/tencent/qqpim/sdk/object/d;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/sdk/object/d;->a(Lcom/tencent/qqpim/sdk/object/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/util/List;Ljava/util/List;)I
    .locals 3

    const/4 v0, -0x2

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/sdk/object/a/d;->c(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    invoke-direct {p0, p2, p1}, Lcom/tencent/qqpim/sdk/object/a/d;->c(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    :cond_2
    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-static {p1}, Lcom/tencent/qqpim/sdk/object/a/d;->a(Ljava/lang/String;)B

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/object/a/d;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move-object p0, v1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-gez v2, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1
.end method

.method private static c(Ljava/util/List;)Ljava/util/List;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-object v1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c(Ljava/util/List;Ljava/util/List;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-static {p1, v0}, Lcom/tencent/qqpim/sdk/object/a/d;->a(Ljava/util/List;Lcom/tencent/qqpim/sdk/object/d;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/qqpim/sdk/object/a/d;)I
    .locals 7

    const/4 v0, -0x1

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, -0x2

    const-string v4, "TEL"

    invoke-direct {p0, v4}, Lcom/tencent/qqpim/sdk/object/a/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string v5, "TEL"

    invoke-direct {p1, v5}, Lcom/tencent/qqpim/sdk/object/a/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Lcom/tencent/qqpim/sdk/object/a/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {v5}, Lcom/tencent/qqpim/sdk/object/a/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/tencent/qqpim/sdk/object/a/d;->b(Ljava/util/List;Ljava/util/List;)I

    move-result v4

    if-ne v4, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v5, "EMAIL"

    invoke-direct {p0, v5}, Lcom/tencent/qqpim/sdk/object/a/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const-string v6, "EMAIL"

    invoke-direct {p1, v6}, Lcom/tencent/qqpim/sdk/object/a/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/tencent/qqpim/sdk/object/a/d;->b(Ljava/util/List;Ljava/util/List;)I

    move-result v5

    if-eq v5, v0, :cond_0

    if-ne v4, v1, :cond_2

    if-ne v5, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-ne v4, v2, :cond_3

    if-eq v5, v2, :cond_5

    :cond_3
    if-ne v4, v1, :cond_4

    if-eq v5, v2, :cond_5

    :cond_4
    if-ne v4, v2, :cond_6

    if-ne v5, v1, :cond_6

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    if-ne v4, v3, :cond_7

    if-eq v5, v3, :cond_9

    :cond_7
    if-ne v4, v1, :cond_8

    if-eq v5, v3, :cond_9

    :cond_8
    if-ne v4, v3, :cond_a

    if-ne v5, v1, :cond_a

    :cond_9
    move v0, v3

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Lcom/tencent/qqpim/sdk/interfaces/IEntity;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/a/d;->b:Lcom/tencent/qqpim/sdk/object/a/b;

    return-object v0
.end method

.method public final b(Lcom/tencent/qqpim/sdk/object/a/d;)I
    .locals 9

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x6

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    array-length v6, v5

    move v2, v0

    :goto_0
    if-lt v2, v6, :cond_1

    move v0, v1

    :cond_0
    return v0

    :cond_1
    aget v3, v5, v2

    invoke-direct {p0, v3}, Lcom/tencent/qqpim/sdk/object/a/d;->a(I)Ljava/util/List;

    move-result-object v7

    invoke-direct {p1, v3}, Lcom/tencent/qqpim/sdk/object/a/d;->a(I)Ljava/util/List;

    move-result-object v3

    invoke-static {v7}, Lcom/tencent/qqpim/sdk/object/a/d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-static {v3}, Lcom/tencent/qqpim/sdk/object/a/d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    if-nez v7, :cond_2

    if-nez v3, :cond_2

    move v3, v1

    :goto_1
    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    invoke-interface {v7, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3, v7}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_1

    nop

    :array_0
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final b()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/tencent/qqpim/sdk/object/a/d;->a(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/tencent/qqpim/sdk/object/a/d;->a(I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/tencent/qqpim/sdk/object/a/d;->a(I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/object/a/d;->a(I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final c(Lcom/tencent/qqpim/sdk/object/a/d;)Lcom/tencent/qqpim/sdk/object/a/d;
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    const/16 v0, 0x12

    if-lt v2, v0, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0, v2}, Lcom/tencent/qqpim/sdk/object/a/d;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v2}, Lcom/tencent/qqpim/sdk/object/a/d;->a(I)Ljava/util/List;

    move-result-object v1

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :pswitch_1
    if-nez v1, :cond_2

    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/a/d;->b:Lcom/tencent/qqpim/sdk/object/a/b;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    invoke-static {v1}, Lcom/tencent/qqpim/sdk/object/a/d;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v0, ""

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    move-object v0, v4

    goto :goto_2

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/sdk/object/d;

    invoke-virtual {v0, v12}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v0, v3

    :goto_4
    if-ge v0, v8, :cond_4

    aget-object v9, v7, v0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/qqpim/sdk/object/d;

    invoke-direct {v1}, Lcom/tencent/qqpim/sdk/object/d;-><init>()V

    const-string v5, "CATEGORIES"

    invoke-virtual {v1, v3, v5}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    invoke-virtual {v1, v12, v0}, Lcom/tencent/qqpim/sdk/object/d;->b(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/sdk/object/a/d;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/a/d;->b:Lcom/tencent/qqpim/sdk/object/a/b;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :pswitch_3
    if-eqz v1, :cond_a

    if-nez v0, :cond_a

    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/a/d;->b:Lcom/tencent/qqpim/sdk/object/a/b;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpim/sdk/object/a/b;->putValue(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_a
    move-object v0, v4

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final d(Lcom/tencent/qqpim/sdk/object/a/d;)I
    .locals 5

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/tencent/qqpim/sdk/object/a/d;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/tencent/qqpim/sdk/object/a/d;->a(I)Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v1}, Lcom/tencent/qqpim/sdk/object/a/d;->a(I)Ljava/util/List;

    move-result-object v3

    packed-switch v1, :pswitch_data_0

    :cond_3
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/tencent/qqpim/sdk/object/a/d;->c(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3, v2}, Lcom/tencent/qqpim/sdk/object/a/d;->c(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
