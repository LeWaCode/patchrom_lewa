.class Llewa/laml/data/Variables$StringInfo;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringInfo"
.end annotation


# instance fields
.field mValue:Ljava/lang/String;

.field mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "value"
    .parameter "version"

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Llewa/laml/data/Variables$StringInfo;->mValue:Ljava/lang/String;

    .line 203
    iput p2, p0, Llewa/laml/data/Variables$StringInfo;->mVersion:I

    .line 204
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 197
    iput-object p1, p0, Llewa/laml/data/Variables$StringInfo;->mValue:Ljava/lang/String;

    .line 198
    iget v0, p0, Llewa/laml/data/Variables$StringInfo;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llewa/laml/data/Variables$StringInfo;->mVersion:I

    .line 199
    return-void
.end method
