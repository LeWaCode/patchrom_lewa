.class public Lcom/lewa/bi/common/util/Joiners;
.super Ljava/lang/Object;
.source "Joiners.java"


# static fields
.field public static final FIELD_JOINER:Lcom/lewa/guava/base/Joiner; = null

.field public static final FIELD_SEPARATOR:Ljava/lang/String; = ":"

.field public static final LIST_JOINER:Lcom/lewa/guava/base/Joiner; = null

.field public static final LIST_SEPARATOR:Ljava/lang/String; = ","

.field public static final SKIP_NULL_FIELD_JOINER:Lcom/lewa/guava/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, ","

    invoke-static {v0}, Lcom/lewa/guava/base/Joiner;->on(Ljava/lang/String;)Lcom/lewa/guava/base/Joiner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/base/Joiner;->skipNulls()Lcom/lewa/guava/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/lewa/bi/common/util/Joiners;->LIST_JOINER:Lcom/lewa/guava/base/Joiner;

    .line 22
    const-string v0, ":"

    invoke-static {v0}, Lcom/lewa/guava/base/Joiner;->on(Ljava/lang/String;)Lcom/lewa/guava/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/lewa/bi/common/util/Joiners;->FIELD_JOINER:Lcom/lewa/guava/base/Joiner;

    .line 24
    const-string v0, ":"

    invoke-static {v0}, Lcom/lewa/guava/base/Joiner;->on(Ljava/lang/String;)Lcom/lewa/guava/base/Joiner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/base/Joiner;->skipNulls()Lcom/lewa/guava/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/lewa/bi/common/util/Joiners;->SKIP_NULL_FIELD_JOINER:Lcom/lewa/guava/base/Joiner;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
