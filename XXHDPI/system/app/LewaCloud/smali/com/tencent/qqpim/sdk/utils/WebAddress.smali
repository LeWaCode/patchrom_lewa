.class public Lcom/tencent/qqpim/sdk/utils/WebAddress;
.super Ljava/lang/Object;


# static fields
.field static final MATCH_GROUP_AUTHORITY:I = 0x2

.field static final MATCH_GROUP_HOST:I = 0x3

.field static final MATCH_GROUP_PATH:I = 0x5

.field static final MATCH_GROUP_PORT:I = 0x4

.field static final MATCH_GROUP_SCHEME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "http"

.field static sAddressPattern:Ljava/util/regex/Pattern;


# instance fields
.field public mAuthInfo:Ljava/lang/String;

.field public mHost:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public mPort:I

.field public mScheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:(http|HTTP|https|HTTPS|file|FILE)\\:\\/\\/)?(?:([-A-Za-z0-9$_.+!*\'(),;?&=]+(?:\\:[-A-Za-z0-9$_.+!*\'(),;?&=]+)?)@)?([-A-Za-z0-9%]+(?:\\.[-A-Za-z0-9%]+)*)?(?:\\:([0-9]+))?(\\/?.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x1bb

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mScheme:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mHost:Ljava/lang/String;

    iput v3, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mPort:I

    const-string v0, "/"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mAuthInfo:Ljava/lang/String;

    sget-object v0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mScheme:Ljava/lang/String;

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mAuthInfo:Ljava/lang/String;

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iput-object v1, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mHost:Ljava/lang/String;

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mPort:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_8

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mPath:Ljava/lang/String;

    :cond_5
    :goto_0
    iget v0, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mPort:I

    if-ne v0, v4, :cond_a

    const-string v0, ""

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "https"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mScheme:Ljava/lang/String;

    :cond_6
    :goto_1
    const-string v0, ""

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "http"

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mScheme:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mScheme:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mScheme:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/tencent/qqpim/sdk/utils/WebAddress$ParseException;

    const-string v1, "Bad port"

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqpim/sdk/utils/WebAddress$ParseException;-><init>(Lcom/tencent/qqpim/sdk/utils/WebAddress;Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mPath:Ljava/lang/String;

    goto :goto_0

    :cond_9
    new-instance v0, Lcom/tencent/qqpim/sdk/utils/WebAddress$ParseException;

    const-string v1, "Bad address"

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqpim/sdk/utils/WebAddress$ParseException;-><init>(Lcom/tencent/qqpim/sdk/utils/WebAddress;Ljava/lang/String;)V

    throw v0

    :cond_a
    iget v0, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mPort:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mScheme:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput v4, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mPort:I

    goto :goto_1

    :cond_b
    const/16 v0, 0x50

    iput v0, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mPort:I

    goto :goto_1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    iget v1, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mPort:I

    const/16 v2, 0x1bb

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mScheme:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mPort:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mScheme:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, ""

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mScheme:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/sdk/utils/WebAddress;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
