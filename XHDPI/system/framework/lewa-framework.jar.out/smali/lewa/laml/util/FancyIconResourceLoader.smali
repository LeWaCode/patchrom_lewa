.class public Llewa/laml/util/FancyIconResourceLoader;
.super Llewa/laml/ResourceLoader;
.source "FancyIconResourceLoader.java"


# instance fields
.field private mRelatviePathBaseIcons:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "relativePathBaseIcons"

    .prologue
    .line 13
    invoke-direct {p0}, Llewa/laml/ResourceLoader;-><init>()V

    .line 14
    iput-object p1, p0, Llewa/laml/util/FancyIconResourceLoader;->mRelatviePathBaseIcons:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method protected getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 3
    .parameter "path"
    .parameter "size"

    .prologue
    .line 18
    invoke-static {}, Llewa/content/res/ThemeResources;->getSystem()Llewa/content/res/ThemeResources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Llewa/laml/util/FancyIconResourceLoader;->mRelatviePathBaseIcons:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Llewa/content/res/ThemeResources;->getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected resourceExists(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 22
    invoke-static {}, Llewa/content/res/ThemeResources;->getSystem()Llewa/content/res/ThemeResources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Llewa/laml/util/FancyIconResourceLoader;->mRelatviePathBaseIcons:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llewa/content/res/ThemeResources;->hasIcon(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Llewa/laml/util/FancyIconResourceLoader;->mRelatviePathBaseIcons:Ljava/lang/String;

    return-object v0
.end method
