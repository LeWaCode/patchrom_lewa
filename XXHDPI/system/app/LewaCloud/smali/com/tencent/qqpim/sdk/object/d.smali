.class public final Lcom/tencent/qqpim/sdk/object/d;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/lang/StringBuilder;


# instance fields
.field private a:[Ljava/lang/StringBuilder;

.field private b:[B

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/sdk/object/d;->d:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/object/d;->b:[B

    iput-boolean v2, p0, Lcom/tencent/qqpim/sdk/object/d;->c:Z

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v2, v0, v1

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/d;->b:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2b

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/d;->b:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x56

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/sdk/object/d;->c:Z

    return-void
.end method

.method public final a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/sdk/object/d;->b:[B

    return-void
.end method

.method public final a(Lcom/tencent/qqpim/sdk/object/d;)Z
    .locals 2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/tencent/qqpim/sdk/object/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    aget-object v1, v1, p1

    sget-object v2, Lcom/tencent/qqpim/sdk/object/d;->d:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/tencent/qqpim/sdk/object/d;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/tencent/qqpim/sdk/object/d;->d:Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/qqpim/sdk/object/d;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-lt v0, v2, :cond_2

    sget-object v0, Lcom/tencent/qqpim/sdk/object/d;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_3

    sget-object v4, Lcom/tencent/qqpim/sdk/object/d;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/d;->b:[B

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/sdk/object/d;->c:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/tencent/qqpim/sdk/object/d;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/tencent/qqpim/sdk/object/d;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/object/d;->a:[Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
