.class Llewa/track/CustomVariable;
.super Ljava/lang/Object;
.source "CustomVariable.java"


# static fields
.field public static final INDEX_ERROR_MSG:Ljava/lang/String; = "Index must be between 1 and 5 inclusive."

.field public static final MAX_CUSTOM_VARIABLES:I = 0x5

.field public static final MAX_CUSTOM_VARIABLE_LENGTH:I = 0x40

.field public static final PAGE_SCOPE:I = 0x3

.field public static final SESSION_SCOPE:I = 0x2

.field public static final VISITOR_SCOPE:I = 0x1


# instance fields
.field private final index:I

.field private final name:Ljava/lang/String;

.field private final scope:I

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 43
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Llewa/track/CustomVariable;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "index"
    .parameter "name"
    .parameter "value"
    .parameter "scope"

    .prologue
    const/4 v2, 0x1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eq p4, v2, :cond_0

    const/4 v1, 0x2

    if-eq p4, v1, :cond_0

    const/4 v1, 0x3

    if-eq p4, v1, :cond_0

    .line 18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Scope:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_0
    if-lt p1, v2, :cond_1

    const/4 v1, 0x5

    if-le p1, v1, :cond_2

    .line 20
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Index must be between 1 and 5 inclusive."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 23
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid argument for name:  Cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 26
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid argument for value:  Cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_6
    const/4 v0, 0x0

    .line 29
    .local v0, i:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llewa/track/AnalyticsParameterEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 31
    const/16 v1, 0x40

    if-le v0, v1, :cond_7

    .line 32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoded form of name and value must not exceed 64 characters combined.  Character length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_7
    iput p1, p0, Llewa/track/CustomVariable;->index:I

    .line 37
    iput-object p2, p0, Llewa/track/CustomVariable;->name:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Llewa/track/CustomVariable;->value:Ljava/lang/String;

    .line 39
    iput p4, p0, Llewa/track/CustomVariable;->scope:I

    .line 40
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Llewa/track/CustomVariable;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Llewa/track/CustomVariable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Llewa/track/CustomVariable;->scope:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Llewa/track/CustomVariable;->value:Ljava/lang/String;

    return-object v0
.end method
