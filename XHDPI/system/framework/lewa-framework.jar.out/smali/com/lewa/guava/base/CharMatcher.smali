.class public abstract Lcom/lewa/guava/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/lewa/guava/base/Predicate;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/base/CharMatcher$LookupTable;,
        Lcom/lewa/guava/base/CharMatcher$Or;,
        Lcom/lewa/guava/base/CharMatcher$And;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lewa/guava/base/Predicate",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANY:Lcom/lewa/guava/base/CharMatcher; = null

.field public static final ASCII:Lcom/lewa/guava/base/CharMatcher; = null

.field public static final BREAKING_WHITESPACE:Lcom/lewa/guava/base/CharMatcher; = null

.field private static final BREAKING_WHITESPACE_CHARS:Ljava/lang/String; = "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000"

.field public static final DIGIT:Lcom/lewa/guava/base/CharMatcher; = null

.field public static final INVISIBLE:Lcom/lewa/guava/base/CharMatcher; = null

.field public static final JAVA_DIGIT:Lcom/lewa/guava/base/CharMatcher; = null

.field public static final JAVA_ISO_CONTROL:Lcom/lewa/guava/base/CharMatcher; = null

.field public static final JAVA_LETTER:Lcom/lewa/guava/base/CharMatcher; = null

.field public static final JAVA_LETTER_OR_DIGIT:Lcom/lewa/guava/base/CharMatcher; = null

.field public static final JAVA_LOWER_CASE:Lcom/lewa/guava/base/CharMatcher; = null

.field public static final JAVA_UPPER_CASE:Lcom/lewa/guava/base/CharMatcher; = null

.field public static final JAVA_WHITESPACE:Lcom/lewa/guava/base/CharMatcher; = null

.field public static final NONE:Lcom/lewa/guava/base/CharMatcher; = null

.field private static final NON_BREAKING_WHITESPACE_CHARS:Ljava/lang/String; = "\u00a0\u180e\u202f"

.field public static final SINGLE_WIDTH:Lcom/lewa/guava/base/CharMatcher;

.field public static final WHITESPACE:Lcom/lewa/guava/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x600

    const/16 v12, 0x20

    const/16 v11, 0x7f

    const/16 v10, 0x2000

    const/4 v9, 0x0

    .line 103
    const-string v6, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000\u00a0\u180e\u202f"

    invoke-static {v6}, Lcom/lewa/guava/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x200a

    invoke-static {v10, v7}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/lewa/guava/base/CharMatcher;->WHITESPACE:Lcom/lewa/guava/base/CharMatcher;

    .line 115
    const-string v6, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000"

    invoke-static {v6}, Lcom/lewa/guava/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2006

    invoke-static {v10, v7}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2008

    const/16 v8, 0x200a

    invoke-static {v7, v8}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/lewa/guava/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/lewa/guava/base/CharMatcher;

    .line 124
    invoke-static {v9, v11}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/lewa/guava/base/CharMatcher;->ASCII:Lcom/lewa/guava/base/CharMatcher;

    .line 133
    const/16 v6, 0x30

    const/16 v7, 0x39

    invoke-static {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v2

    .line 134
    .local v2, digit:Lcom/lewa/guava/base/CharMatcher;
    const-string v5, "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    .line 138
    .local v5, zeroes:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v1, v0, v3

    .line 139
    .local v1, base:C
    add-int/lit8 v6, v1, 0x9

    int-to-char v6, v6

    invoke-static {v1, v6}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v2

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    .end local v1           #base:C
    :cond_0
    sput-object v2, Lcom/lewa/guava/base/CharMatcher;->DIGIT:Lcom/lewa/guava/base/CharMatcher;

    .line 150
    const/16 v6, 0x9

    const/16 v7, 0xd

    invoke-static {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x1c

    invoke-static {v7, v12}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x1680

    invoke-static {v7}, Lcom/lewa/guava/base/CharMatcher;->is(C)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x180e

    invoke-static {v7}, Lcom/lewa/guava/base/CharMatcher;->is(C)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2006

    invoke-static {v10, v7}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2008

    const/16 v8, 0x200b

    invoke-static {v7, v8}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2028

    const/16 v8, 0x2029

    invoke-static {v7, v8}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x205f

    invoke-static {v7}, Lcom/lewa/guava/base/CharMatcher;->is(C)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x3000

    invoke-static {v7}, Lcom/lewa/guava/base/CharMatcher;->is(C)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/lewa/guava/base/CharMatcher;->JAVA_WHITESPACE:Lcom/lewa/guava/base/CharMatcher;

    .line 166
    new-instance v6, Lcom/lewa/guava/base/CharMatcher$1;

    invoke-direct {v6}, Lcom/lewa/guava/base/CharMatcher$1;-><init>()V

    sput-object v6, Lcom/lewa/guava/base/CharMatcher;->JAVA_DIGIT:Lcom/lewa/guava/base/CharMatcher;

    .line 178
    new-instance v6, Lcom/lewa/guava/base/CharMatcher$2;

    invoke-direct {v6}, Lcom/lewa/guava/base/CharMatcher$2;-><init>()V

    sput-object v6, Lcom/lewa/guava/base/CharMatcher;->JAVA_LETTER:Lcom/lewa/guava/base/CharMatcher;

    .line 188
    new-instance v6, Lcom/lewa/guava/base/CharMatcher$3;

    invoke-direct {v6}, Lcom/lewa/guava/base/CharMatcher$3;-><init>()V

    sput-object v6, Lcom/lewa/guava/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lcom/lewa/guava/base/CharMatcher;

    .line 198
    new-instance v6, Lcom/lewa/guava/base/CharMatcher$4;

    invoke-direct {v6}, Lcom/lewa/guava/base/CharMatcher$4;-><init>()V

    sput-object v6, Lcom/lewa/guava/base/CharMatcher;->JAVA_UPPER_CASE:Lcom/lewa/guava/base/CharMatcher;

    .line 208
    new-instance v6, Lcom/lewa/guava/base/CharMatcher$5;

    invoke-direct {v6}, Lcom/lewa/guava/base/CharMatcher$5;-><init>()V

    sput-object v6, Lcom/lewa/guava/base/CharMatcher;->JAVA_LOWER_CASE:Lcom/lewa/guava/base/CharMatcher;

    .line 218
    const/16 v6, 0x1f

    invoke-static {v9, v6}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x9f

    invoke-static {v11, v7}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/lewa/guava/base/CharMatcher;->JAVA_ISO_CONTROL:Lcom/lewa/guava/base/CharMatcher;

    .line 227
    invoke-static {v9, v12}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0xa0

    invoke-static {v11, v7}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0xad

    invoke-static {v7}, Lcom/lewa/guava/base/CharMatcher;->is(C)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x603

    invoke-static {v13, v7}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const-string v7, "\u06dd\u070f\u1680\u17b4\u17b5\u180e"

    invoke-static {v7}, Lcom/lewa/guava/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x200f

    invoke-static {v10, v7}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2028

    const/16 v8, 0x202f

    invoke-static {v7, v8}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x205f

    const/16 v8, 0x2064

    invoke-static {v7, v8}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x206a

    const/16 v8, 0x206f

    invoke-static {v7, v8}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x3000

    invoke-static {v7}, Lcom/lewa/guava/base/CharMatcher;->is(C)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const v7, 0xd800

    const v8, 0xf8ff

    invoke-static {v7, v8}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const-string v7, "\ufeff\ufff9\ufffa\ufffb"

    invoke-static {v7}, Lcom/lewa/guava/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/lewa/guava/base/CharMatcher;->INVISIBLE:Lcom/lewa/guava/base/CharMatcher;

    .line 248
    const/16 v6, 0x4f9

    invoke-static {v9, v6}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5be

    invoke-static {v7}, Lcom/lewa/guava/base/CharMatcher;->is(C)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5d0

    const/16 v8, 0x5ea

    invoke-static {v7, v8}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5f3

    invoke-static {v7}, Lcom/lewa/guava/base/CharMatcher;->is(C)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5f4

    invoke-static {v7}, Lcom/lewa/guava/base/CharMatcher;->is(C)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x6ff

    invoke-static {v13, v7}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x750

    const/16 v8, 0x77f

    invoke-static {v7, v8}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0xe00

    const/16 v8, 0xe7f

    invoke-static {v7, v8}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x1e00

    const/16 v8, 0x20af

    invoke-static {v7, v8}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2100

    const/16 v8, 0x213a

    invoke-static {v7, v8}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const v7, 0xfb50

    const v8, 0xfdff

    invoke-static {v7, v8}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const v7, 0xfe70

    const v8, 0xfeff

    invoke-static {v7, v8}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    const v7, 0xff61

    const v8, 0xffdc

    invoke-static {v7, v8}, Lcom/lewa/guava/base/CharMatcher;->inRange(CC)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lewa/guava/base/CharMatcher;->or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/lewa/guava/base/CharMatcher;->SINGLE_WIDTH:Lcom/lewa/guava/base/CharMatcher;

    .line 263
    new-instance v6, Lcom/lewa/guava/base/CharMatcher$6;

    invoke-direct {v6}, Lcom/lewa/guava/base/CharMatcher$6;-><init>()V

    sput-object v6, Lcom/lewa/guava/base/CharMatcher;->ANY:Lcom/lewa/guava/base/CharMatcher;

    .line 330
    new-instance v6, Lcom/lewa/guava/base/CharMatcher$7;

    invoke-direct {v6}, Lcom/lewa/guava/base/CharMatcher$7;-><init>()V

    sput-object v6, Lcom/lewa/guava/base/CharMatcher;->NONE:Lcom/lewa/guava/base/CharMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    return-void
.end method

.method public static anyOf(Ljava/lang/CharSequence;)Lcom/lewa/guava/base/CharMatcher;
    .locals 5
    .parameter "sequence"

    .prologue
    const/4 v4, 0x0

    .line 457
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 479
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 480
    .local v0, chars:[C
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 482
    new-instance v3, Lcom/lewa/guava/base/CharMatcher$11;

    invoke-direct {v3, v0}, Lcom/lewa/guava/base/CharMatcher$11;-><init>([C)V

    .end local v0           #chars:[C
    :goto_0
    return-object v3

    .line 459
    :pswitch_0
    sget-object v3, Lcom/lewa/guava/base/CharMatcher;->NONE:Lcom/lewa/guava/base/CharMatcher;

    goto :goto_0

    .line 461
    :pswitch_1
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/lewa/guava/base/CharMatcher;->is(C)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v3

    goto :goto_0

    .line 463
    :pswitch_2
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 464
    .local v1, match1:C
    const/4 v3, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 465
    .local v2, match2:C
    new-instance v3, Lcom/lewa/guava/base/CharMatcher$10;

    invoke-direct {v3, v1, v2}, Lcom/lewa/guava/base/CharMatcher$10;-><init>(CC)V

    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static forPredicate(Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/base/CharMatcher;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/base/Predicate",
            "<-",
            "Ljava/lang/Character;",
            ">;)",
            "Lcom/lewa/guava/base/CharMatcher;"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-Ljava/lang/Character;>;"
    invoke-static {p0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    instance-of v0, p0, Lcom/lewa/guava/base/CharMatcher;

    if-eqz v0, :cond_0

    .line 540
    check-cast p0, Lcom/lewa/guava/base/CharMatcher;

    .line 542
    .end local p0           #predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-Ljava/lang/Character;>;"
    :goto_0
    return-object p0

    .restart local p0       #predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-Ljava/lang/Character;>;"
    :cond_0
    new-instance v0, Lcom/lewa/guava/base/CharMatcher$13;

    invoke-direct {v0, p0}, Lcom/lewa/guava/base/CharMatcher$13;-><init>(Lcom/lewa/guava/base/Predicate;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static inRange(CC)Lcom/lewa/guava/base/CharMatcher;
    .locals 1
    .parameter "startInclusive"
    .parameter "endInclusive"

    .prologue
    .line 511
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 512
    new-instance v0, Lcom/lewa/guava/base/CharMatcher$12;

    invoke-direct {v0, p0, p1}, Lcom/lewa/guava/base/CharMatcher$12;-><init>(CC)V

    return-object v0

    .line 511
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is(C)Lcom/lewa/guava/base/CharMatcher;
    .locals 1
    .parameter "match"

    .prologue
    .line 401
    new-instance v0, Lcom/lewa/guava/base/CharMatcher$8;

    invoke-direct {v0, p0}, Lcom/lewa/guava/base/CharMatcher$8;-><init>(C)V

    return-object v0
.end method

.method public static isNot(C)Lcom/lewa/guava/base/CharMatcher;
    .locals 1
    .parameter "match"

    .prologue
    .line 435
    new-instance v0, Lcom/lewa/guava/base/CharMatcher$9;

    invoke-direct {v0, p0}, Lcom/lewa/guava/base/CharMatcher$9;-><init>(C)V

    return-object v0
.end method

.method public static noneOf(Ljava/lang/CharSequence;)Lcom/lewa/guava/base/CharMatcher;
    .locals 1
    .parameter "sequence"

    .prologue
    .line 499
    invoke-static {p0}, Lcom/lewa/guava/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/base/CharMatcher;->negate()Lcom/lewa/guava/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public and(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;
    .locals 4
    .parameter "other"

    .prologue
    .line 589
    new-instance v1, Lcom/lewa/guava/base/CharMatcher$And;

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/lewa/guava/base/CharMatcher;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/base/CharMatcher;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lewa/guava/base/CharMatcher$And;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public apply(Ljava/lang/Character;)Z
    .locals 1
    .parameter "character"

    .prologue
    .line 1143
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lewa/guava/base/CharMatcher;->matches(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/guava/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 7
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 1082
    invoke-virtual {p0, p1}, Lcom/lewa/guava/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1083
    .local v2, first:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 1084
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1105
    :goto_0
    return-object v5

    .line 1089
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    invoke-interface {p1, v6, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1092
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .line 1093
    .local v4, in:Z
    add-int/lit8 v3, v2, 0x1

    .local v3, i:I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1094
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1095
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lewa/guava/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1096
    if-nez v4, :cond_1

    .line 1097
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1098
    const/4 v4, 0x1

    .line 1093
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1101
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1102
    const/4 v4, 0x0

    goto :goto_2

    .line 1105
    .end local v1           #c:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .locals 3
    .parameter "sequence"

    .prologue
    .line 845
    const/4 v0, 0x0

    .line 846
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 847
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lewa/guava/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 848
    add-int/lit8 v0, v0, 0x1

    .line 846
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 851
    :cond_1
    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .locals 3
    .parameter "sequence"

    .prologue
    .line 786
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 787
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 788
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lewa/guava/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 792
    .end local v0           #i:I
    :goto_1
    return v0

    .line 787
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 3
    .parameter "sequence"
    .parameter "start"

    .prologue
    .line 812
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 813
    .local v1, length:I
    invoke-static {p2, v1}, Lcom/lewa/guava/base/Preconditions;->checkPositionIndex(II)I

    .line 814
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 815
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lewa/guava/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    .end local v0           #i:I
    :goto_1
    return v0

    .line 814
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 819
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .locals 2
    .parameter "sequence"

    .prologue
    .line 833
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 834
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lewa/guava/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    .end local v0           #i:I
    :goto_1
    return v0

    .line 833
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 838
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public abstract matches(C)Z
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "sequence"

    .prologue
    .line 749
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 750
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lewa/guava/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 751
    const/4 v1, 0x0

    .line 754
    :goto_1
    return v1

    .line 749
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 754
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "sequence"

    .prologue
    .line 770
    invoke-virtual {p0, p1}, Lcom/lewa/guava/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public negate()Lcom/lewa/guava/base/CharMatcher;
    .locals 2

    .prologue
    .line 563
    move-object v0, p0

    .line 564
    .local v0, original:Lcom/lewa/guava/base/CharMatcher;
    new-instance v1, Lcom/lewa/guava/base/CharMatcher$14;

    invoke-direct {v1, p0, v0}, Lcom/lewa/guava/base/CharMatcher$14;-><init>(Lcom/lewa/guava/base/CharMatcher;Lcom/lewa/guava/base/CharMatcher;)V

    return-object v1
.end method

.method public or(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;
    .locals 4
    .parameter "other"

    .prologue
    .line 620
    new-instance v1, Lcom/lewa/guava/base/CharMatcher$Or;

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/lewa/guava/base/CharMatcher;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/base/CharMatcher;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/lewa/guava/base/CharMatcher$Or;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public precomputed()Lcom/lewa/guava/base/CharMatcher;
    .locals 1

    .prologue
    .line 664
    invoke-static {p0}, Lcom/lewa/guava/base/Platform;->precomputeCharMatcher(Lcom/lewa/guava/base/CharMatcher;)Lcom/lewa/guava/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method precomputedInternal()Lcom/lewa/guava/base/CharMatcher;
    .locals 2

    .prologue
    .line 680
    new-instance v0, Lcom/lewa/guava/base/CharMatcher$LookupTable;

    invoke-direct {v0}, Lcom/lewa/guava/base/CharMatcher$LookupTable;-><init>()V

    .line 681
    .local v0, table:Lcom/lewa/guava/base/CharMatcher$LookupTable;
    invoke-virtual {p0, v0}, Lcom/lewa/guava/base/CharMatcher;->setBits(Lcom/lewa/guava/base/CharMatcher$LookupTable;)V

    .line 683
    new-instance v1, Lcom/lewa/guava/base/CharMatcher$15;

    invoke-direct {v1, p0, v0}, Lcom/lewa/guava/base/CharMatcher$15;-><init>(Lcom/lewa/guava/base/CharMatcher;Lcom/lewa/guava/base/CharMatcher$LookupTable;)V

    return-object v1
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .parameter "sequence"

    .prologue
    .line 863
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 864
    .local v3, string:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/lewa/guava/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v1

    .line 865
    .local v1, pos:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 888
    .end local v3           #string:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 869
    .restart local v3       #string:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 870
    .local v0, chars:[C
    const/4 v2, 0x1

    .line 875
    .local v2, spread:I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 877
    :goto_2
    array-length v4, v0

    if-ne v1, v4, :cond_1

    .line 888
    new-instance v3, Ljava/lang/String;

    .end local v3           #string:Ljava/lang/String;
    const/4 v4, 0x0

    sub-int v5, v1, v2

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 880
    .restart local v3       #string:Ljava/lang/String;
    :cond_1
    aget-char v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/lewa/guava/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 886
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 883
    :cond_2
    sub-int v4, v1, v2

    aget-char v5, v0, v1

    aput-char v5, v0, v4

    .line 884
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 5
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 922
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 923
    .local v3, string:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/lewa/guava/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v2

    .line 924
    .local v2, pos:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 934
    .end local v3           #string:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 927
    .restart local v3       #string:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 928
    .local v0, chars:[C
    aput-char p2, v0, v2

    .line 929
    add-int/lit8 v1, v2, 0x1

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 930
    aget-char v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/lewa/guava/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 931
    aput-char p2, v0, v1

    .line 929
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 934
    :cond_2
    new-instance v3, Ljava/lang/String;

    .end local v3           #string:Ljava/lang/String;
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 11
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    const/4 v10, -0x1

    .line 955
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 956
    .local v4, replacementLen:I
    if-nez v4, :cond_1

    .line 957
    invoke-virtual {p0, p1}, Lcom/lewa/guava/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 981
    :cond_0
    :goto_0
    return-object v5

    .line 959
    :cond_1
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 960
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {p0, p1, v6}, Lcom/lewa/guava/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 963
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 964
    .local v5, string:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/lewa/guava/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v3

    .line 965
    .local v3, pos:I
    if-eq v3, v10, :cond_0

    .line 969
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 970
    .local v1, len:I
    new-instance v0, Ljava/lang/StringBuilder;

    int-to-double v6, v1

    const-wide/high16 v8, 0x3ff8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x10

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 972
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 974
    .local v2, oldpos:I
    :cond_3
    invoke-virtual {v0, v5, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 976
    add-int/lit8 v2, v3, 0x1

    .line 977
    invoke-virtual {p0, v5, v2}, Lcom/lewa/guava/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 978
    if-ne v3, v10, :cond_3

    .line 980
    invoke-virtual {v0, v5, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .parameter "sequence"

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/lewa/guava/base/CharMatcher;->negate()Lcom/lewa/guava/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lewa/guava/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setBits(Lcom/lewa/guava/base/CharMatcher$LookupTable;)V
    .locals 3
    .parameter "table"

    .prologue
    .line 705
    const/4 v0, 0x0

    .line 707
    .local v0, c:C
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lewa/guava/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 708
    invoke-virtual {p1, v0}, Lcom/lewa/guava/base/CharMatcher$LookupTable;->set(C)V

    .line 710
    :cond_0
    add-int/lit8 v2, v0, 0x1

    int-to-char v1, v2

    .end local v0           #c:C
    .local v1, c:C
    const v2, 0xffff

    if-ne v0, v2, :cond_1

    .line 714
    return-void

    :cond_1
    move v0, v1

    .end local v1           #c:C
    .restart local v0       #c:C
    goto :goto_0
.end method

.method public trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 6
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/lewa/guava/base/CharMatcher;->negate()Lcom/lewa/guava/base/CharMatcher;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/lewa/guava/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1115
    .local v2, first:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 1116
    const-string v5, ""

    .line 1132
    :goto_0
    return-object v5

    .line 1118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1119
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 1120
    .local v4, inMatchingGroup:Z
    move v3, v2

    .local v3, i:I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1121
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1122
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lewa/guava/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1123
    const/4 v4, 0x1

    .line 1120
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1125
    :cond_1
    if-eqz v4, :cond_2

    .line 1126
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1127
    const/4 v4, 0x0

    .line 1129
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1132
    .end local v1           #c:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .parameter "sequence"

    .prologue
    .line 1000
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1004
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, first:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1005
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lewa/guava/base/CharMatcher;->matches(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1009
    :cond_0
    add-int/lit8 v1, v2, -0x1

    .local v1, last:I
    :goto_1
    if-le v1, v0, :cond_1

    .line 1010
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lewa/guava/base/CharMatcher;->matches(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1015
    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1004
    .end local v1           #last:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1009
    .restart local v1       #last:I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .parameter "sequence"

    .prologue
    .line 1028
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1031
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, first:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1032
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lewa/guava/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1037
    :cond_0
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1031
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .parameter "sequence"

    .prologue
    .line 1050
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1053
    .local v1, len:I
    add-int/lit8 v0, v1, -0x1

    .local v0, last:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1054
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lewa/guava/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1059
    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1053
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
