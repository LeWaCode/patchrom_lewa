.class public Lcom/lewa/gson/stream/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/gson/stream/JsonWriter$1;
    }
.end annotation


# static fields
.field private static final HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field private deferredName:Ljava/lang/String;

.field private htmlSafe:Z

.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private serializeNulls:Z

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/gson/stream/JsonScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 139
    const/16 v1, 0x80

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/lewa/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 141
    sget-object v1, Lcom/lewa/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string v2, "\\u%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    sget-object v1, Lcom/lewa/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x22

    const-string v3, "\\\""

    aput-object v3, v1, v2

    .line 144
    sget-object v1, Lcom/lewa/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x5c

    const-string v3, "\\\\"

    aput-object v3, v1, v2

    .line 145
    sget-object v1, Lcom/lewa/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string v3, "\\t"

    aput-object v3, v1, v2

    .line 146
    sget-object v1, Lcom/lewa/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "\\b"

    aput-object v3, v1, v2

    .line 147
    sget-object v1, Lcom/lewa/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0xa

    const-string v3, "\\n"

    aput-object v3, v1, v2

    .line 148
    sget-object v1, Lcom/lewa/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0xd

    const-string v3, "\\r"

    aput-object v3, v1, v2

    .line 149
    sget-object v1, Lcom/lewa/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0xc

    const-string v3, "\\f"

    aput-object v3, v1, v2

    .line 150
    sget-object v1, Lcom/lewa/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/lewa/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 151
    sget-object v1, Lcom/lewa/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x3c

    const-string v3, "\\u003c"

    aput-object v3, v1, v2

    .line 152
    sget-object v1, Lcom/lewa/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x3e

    const-string v3, "\\u003e"

    aput-object v3, v1, v2

    .line 153
    sget-object v1, Lcom/lewa/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x26

    const-string v3, "\\u0026"

    aput-object v3, v1, v2

    .line 154
    sget-object v1, Lcom/lewa/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x3d

    const-string v3, "\\u003d"

    aput-object v3, v1, v2

    .line 155
    sget-object v1, Lcom/lewa/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, "\\u0027"

    aput-object v3, v1, v2

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    .line 163
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    sget-object v1, Lcom/lewa/gson/stream/JsonScope;->EMPTY_DOCUMENT:Lcom/lewa/gson/stream/JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v0, ":"

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lewa/gson/stream/JsonWriter;->serializeNulls:Z

    .line 191
    if-nez p1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    iput-object p1, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 195
    return-void
.end method

.method private beforeName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonWriter;->peek()Lcom/lewa/gson/stream/JsonScope;

    move-result-object v0

    .line 566
    .local v0, context:Lcom/lewa/gson/stream/JsonScope;
    sget-object v1, Lcom/lewa/gson/stream/JsonScope;->NONEMPTY_OBJECT:Lcom/lewa/gson/stream/JsonScope;

    if-ne v0, v1, :cond_1

    .line 567
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 571
    :cond_0
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonWriter;->newline()V

    .line 572
    sget-object v1, Lcom/lewa/gson/stream/JsonScope;->DANGLING_NAME:Lcom/lewa/gson/stream/JsonScope;

    invoke-direct {p0, v1}, Lcom/lewa/gson/stream/JsonWriter;->replaceTop(Lcom/lewa/gson/stream/JsonScope;)V

    .line 573
    return-void

    .line 568
    :cond_1
    sget-object v1, Lcom/lewa/gson/stream/JsonScope;->EMPTY_OBJECT:Lcom/lewa/gson/stream/JsonScope;

    if-eq v0, v1, :cond_0

    .line 569
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nesting problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private beforeValue(Z)V
    .locals 3
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    sget-object v0, Lcom/lewa/gson/stream/JsonWriter$1;->$SwitchMap$com$lewa$gson$stream$JsonScope:[I

    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonWriter;->peek()Lcom/lewa/gson/stream/JsonScope;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lewa/gson/stream/JsonScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 616
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :pswitch_0
    iget-boolean v0, p0, Lcom/lewa/gson/stream/JsonWriter;->lenient:Z

    if-nez v0, :cond_0

    .line 588
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_0
    :pswitch_1
    iget-boolean v0, p0, Lcom/lewa/gson/stream/JsonWriter;->lenient:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 594
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_1
    sget-object v0, Lcom/lewa/gson/stream/JsonScope;->NONEMPTY_DOCUMENT:Lcom/lewa/gson/stream/JsonScope;

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonWriter;->replaceTop(Lcom/lewa/gson/stream/JsonScope;)V

    .line 618
    :goto_0
    return-void

    .line 601
    :pswitch_2
    sget-object v0, Lcom/lewa/gson/stream/JsonScope;->NONEMPTY_ARRAY:Lcom/lewa/gson/stream/JsonScope;

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonWriter;->replaceTop(Lcom/lewa/gson/stream/JsonScope;)V

    .line 602
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonWriter;->newline()V

    goto :goto_0

    .line 606
    :pswitch_3
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 607
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonWriter;->newline()V

    goto :goto_0

    .line 611
    :pswitch_4
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 612
    sget-object v0, Lcom/lewa/gson/stream/JsonScope;->NONEMPTY_OBJECT:Lcom/lewa/gson/stream/JsonScope;

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonWriter;->replaceTop(Lcom/lewa/gson/stream/JsonScope;)V

    goto :goto_0

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private close(Lcom/lewa/gson/stream/JsonScope;Lcom/lewa/gson/stream/JsonScope;Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;
    .locals 4
    .parameter "empty"
    .parameter "nonempty"
    .parameter "closeBracket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonWriter;->peek()Lcom/lewa/gson/stream/JsonScope;

    move-result-object v0

    .line 331
    .local v0, context:Lcom/lewa/gson/stream/JsonScope;
    if-eq v0, p2, :cond_0

    if-eq v0, p1, :cond_0

    .line 332
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nesting problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 335
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dangling name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    iget-object v2, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 339
    if-ne v0, p2, :cond_2

    .line 340
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonWriter;->newline()V

    .line 342
    :cond_2
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 343
    return-object p0
.end method

.method private newline()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 558
    :cond_0
    return-void

    .line 554
    :cond_1
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 555
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Lcom/lewa/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private open(Lcom/lewa/gson/stream/JsonScope;Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;
    .locals 1
    .parameter "empty"
    .parameter "openBracket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 319
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 321
    return-object p0
.end method

.method private peek()Lcom/lewa/gson/stream/JsonScope;
    .locals 3

    .prologue
    .line 350
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 351
    .local v0, size:I
    if-nez v0, :cond_0

    .line 352
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonWriter is closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/gson/stream/JsonScope;

    return-object v1
.end method

.method private replaceTop(Lcom/lewa/gson/stream/JsonScope;)V
    .locals 2
    .parameter "topOfStack"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 362
    return-void
.end method

.method private string(Ljava/lang/String;)V
    .locals 8
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    iget-boolean v6, p0, Lcom/lewa/gson/stream/JsonWriter;->htmlSafe:Z

    if-eqz v6, :cond_1

    sget-object v5, Lcom/lewa/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 519
    .local v5, replacements:[Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 520
    const/4 v2, 0x0

    .line 521
    .local v2, last:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 522
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_6

    .line 523
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 525
    .local v0, c:C
    const/16 v6, 0x80

    if-ge v0, v6, :cond_2

    .line 526
    aget-object v4, v5, v0

    .line 527
    .local v4, replacement:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 522
    .end local v4           #replacement:Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 518
    .end local v0           #c:C
    .end local v1           #i:I
    .end local v2           #last:I
    .end local v3           #length:I
    .end local v5           #replacements:[Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/lewa/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    goto :goto_0

    .line 530
    .restart local v0       #c:C
    .restart local v1       #i:I
    .restart local v2       #last:I
    .restart local v3       #length:I
    .restart local v5       #replacements:[Ljava/lang/String;
    :cond_2
    const/16 v6, 0x2028

    if-ne v0, v6, :cond_5

    .line 531
    const-string v4, "\\u2028"

    .line 537
    .restart local v4       #replacement:Ljava/lang/String;
    :cond_3
    :goto_3
    if-ge v2, v1, :cond_4

    .line 538
    iget-object v6, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v7, v1, v2

    invoke-virtual {v6, p1, v2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 540
    :cond_4
    iget-object v6, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v6, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 541
    add-int/lit8 v2, v1, 0x1

    goto :goto_2

    .line 532
    .end local v4           #replacement:Ljava/lang/String;
    :cond_5
    const/16 v6, 0x2029

    if-ne v0, v6, :cond_0

    .line 533
    const-string v4, "\\u2029"

    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 543
    .end local v0           #c:C
    .end local v4           #replacement:Ljava/lang/String;
    :cond_6
    if-ge v2, v3, :cond_7

    .line 544
    iget-object v6, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v7, v3, v2

    invoke-virtual {v6, p1, v2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 546
    :cond_7
    iget-object v6, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method private writeDeferredName()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonWriter;->beforeName()V

    .line 387
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 390
    :cond_0
    return-void
.end method


# virtual methods
.method public beginArray()Lcom/lewa/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonWriter;->writeDeferredName()V

    .line 281
    sget-object v0, Lcom/lewa/gson/stream/JsonScope;->EMPTY_ARRAY:Lcom/lewa/gson/stream/JsonScope;

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Lcom/lewa/gson/stream/JsonWriter;->open(Lcom/lewa/gson/stream/JsonScope;Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Lcom/lewa/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonWriter;->writeDeferredName()V

    .line 301
    sget-object v0, Lcom/lewa/gson/stream/JsonScope;->EMPTY_OBJECT:Lcom/lewa/gson/stream/JsonScope;

    const-string v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/lewa/gson/stream/JsonWriter;->open(Lcom/lewa/gson/stream/JsonScope;Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 508
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 510
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 511
    .local v0, size:I
    if-gt v0, v2, :cond_0

    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/lewa/gson/stream/JsonScope;->NONEMPTY_DOCUMENT:Lcom/lewa/gson/stream/JsonScope;

    if-eq v1, v2, :cond_1

    .line 512
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incomplete document"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 514
    :cond_1
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 515
    return-void
.end method

.method public endArray()Lcom/lewa/gson/stream/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    sget-object v0, Lcom/lewa/gson/stream/JsonScope;->EMPTY_ARRAY:Lcom/lewa/gson/stream/JsonScope;

    sget-object v1, Lcom/lewa/gson/stream/JsonScope;->NONEMPTY_ARRAY:Lcom/lewa/gson/stream/JsonScope;

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/lewa/gson/stream/JsonWriter;->close(Lcom/lewa/gson/stream/JsonScope;Lcom/lewa/gson/stream/JsonScope;Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lcom/lewa/gson/stream/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    sget-object v0, Lcom/lewa/gson/stream/JsonScope;->EMPTY_OBJECT:Lcom/lewa/gson/stream/JsonScope;

    sget-object v1, Lcom/lewa/gson/stream/JsonScope;->NONEMPTY_OBJECT:Lcom/lewa/gson/stream/JsonScope;

    const-string v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/lewa/gson/stream/JsonWriter;->close(Lcom/lewa/gson/stream/JsonScope;Lcom/lewa/gson/stream/JsonScope;Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 500
    return-void
.end method

.method public final getSerializeNulls()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/lewa/gson/stream/JsonWriter;->serializeNulls:Z

    return v0
.end method

.method public final isHtmlSafe()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/lewa/gson/stream/JsonWriter;->htmlSafe:Z

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/lewa/gson/stream/JsonWriter;->lenient:Z

    return v0
.end method

.method public name(Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    if-nez p1, :cond_0

    .line 372
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_2
    iput-object p1, p0, Lcom/lewa/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 381
    return-object p0
.end method

.method public nullValue()Lcom/lewa/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 415
    iget-boolean v0, p0, Lcom/lewa/gson/stream/JsonWriter;->serializeNulls:Z

    if-eqz v0, :cond_1

    .line 416
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonWriter;->writeDeferredName()V

    .line 422
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 423
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 424
    :goto_0
    return-object p0

    .line 418
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setHtmlSafe(Z)V
    .locals 0
    .parameter "htmlSafe"

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/lewa/gson/stream/JsonWriter;->htmlSafe:Z

    .line 247
    return-void
.end method

.method public final setIndent(Ljava/lang/String;)V
    .locals 1
    .parameter "indent"

    .prologue
    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    .line 208
    const-string v0, ":"

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    iput-object p1, p0, Lcom/lewa/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    .line 211
    const-string v0, ": "

    iput-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setLenient(Z)V
    .locals 0
    .parameter "lenient"

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/lewa/gson/stream/JsonWriter;->lenient:Z

    .line 229
    return-void
.end method

.method public final setSerializeNulls(Z)V
    .locals 0
    .parameter "serializeNulls"

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/lewa/gson/stream/JsonWriter;->serializeNulls:Z

    .line 263
    return-void
.end method

.method public value(D)Lcom/lewa/gson/stream/JsonWriter;
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_1
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonWriter;->writeDeferredName()V

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 452
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 453
    return-object p0
.end method

.method public value(J)Lcom/lewa/gson/stream/JsonWriter;
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonWriter;->writeDeferredName()V

    .line 463
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 464
    iget-object v0, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 465
    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lcom/lewa/gson/stream/JsonWriter;
    .locals 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    if-nez p1, :cond_0

    .line 477
    invoke-virtual {p0}, Lcom/lewa/gson/stream/JsonWriter;->nullValue()Lcom/lewa/gson/stream/JsonWriter;

    move-result-object p0

    .line 488
    .end local p0
    :goto_0
    return-object p0

    .line 480
    .restart local p0
    :cond_0
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonWriter;->writeDeferredName()V

    .line 481
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, string:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lewa/gson/stream/JsonWriter;->lenient:Z

    if-nez v1, :cond_2

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Numeric values must be finite, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lewa/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 487
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0
.end method

.method public value(Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    if-nez p1, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/lewa/gson/stream/JsonWriter;->nullValue()Lcom/lewa/gson/stream/JsonWriter;

    move-result-object p0

    .line 405
    .end local p0
    :goto_0
    return-object p0

    .line 402
    .restart local p0
    :cond_0
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonWriter;->writeDeferredName()V

    .line 403
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 404
    invoke-direct {p0, p1}, Lcom/lewa/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public value(Z)Lcom/lewa/gson/stream/JsonWriter;
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/lewa/gson/stream/JsonWriter;->writeDeferredName()V

    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lewa/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 435
    iget-object v1, p0, Lcom/lewa/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 436
    return-object p0

    .line 435
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
