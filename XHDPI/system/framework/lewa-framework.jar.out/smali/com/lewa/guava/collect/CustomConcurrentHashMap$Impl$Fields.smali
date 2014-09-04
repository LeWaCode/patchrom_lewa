.class Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Fields;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Fields"
.end annotation


# static fields
.field static final segmentMask:Ljava/lang/reflect/Field;

.field static final segmentShift:Ljava/lang/reflect/Field;

.field static final segments:Ljava/lang/reflect/Field;

.field static final strategy:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1937
    const-string v0, "segmentShift"

    invoke-static {v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Fields;->segmentShift:Ljava/lang/reflect/Field;

    .line 1938
    const-string v0, "segmentMask"

    invoke-static {v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Fields;->segmentMask:Ljava/lang/reflect/Field;

    .line 1939
    const-string v0, "segments"

    invoke-static {v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Fields;->segments:Ljava/lang/reflect/Field;

    .line 1940
    const-string v0, "strategy"

    invoke-static {v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Fields;->findField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Fields;->strategy:Ljava/lang/reflect/Field;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .parameter "name"

    .prologue
    .line 1944
    :try_start_0
    const-class v2, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1945
    .local v1, f:Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1946
    return-object v1

    .line 1947
    .end local v1           #f:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 1948
    .local v0, e:Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
