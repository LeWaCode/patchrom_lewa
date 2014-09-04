.class final Lcom/lewa/gson/internal/bind/TypeAdapters$23;
.super Lcom/lewa/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/gson/TypeAdapter",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH:Ljava/lang/String; = "dayOfMonth"

.field private static final HOUR_OF_DAY:Ljava/lang/String; = "hourOfDay"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final SECOND:Ljava/lang/String; = "second"

.field private static final YEAR:Ljava/lang/String; = "year"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/lewa/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Lcom/lewa/gson/internal/bind/TypeAdapters$23;->read(Lcom/lewa/gson/stream/JsonReader;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/lewa/gson/stream/JsonReader;)Ljava/util/Calendar;
    .locals 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v0

    sget-object v9, Lcom/lewa/gson/stream/JsonToken;->NULL:Lcom/lewa/gson/stream/JsonToken;

    if-ne v0, v9, :cond_0

    .line 539
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextNull()V

    .line 540
    const/4 v0, 0x0

    .line 567
    :goto_0
    return-object v0

    .line 542
    :cond_0
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->beginObject()V

    .line 543
    const/4 v1, 0x0

    .line 544
    .local v1, year:I
    const/4 v2, 0x0

    .line 545
    .local v2, month:I
    const/4 v3, 0x0

    .line 546
    .local v3, dayOfMonth:I
    const/4 v4, 0x0

    .line 547
    .local v4, hourOfDay:I
    const/4 v5, 0x0

    .line 548
    .local v5, minute:I
    const/4 v6, 0x0

    .line 549
    .local v6, second:I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v0

    sget-object v9, Lcom/lewa/gson/stream/JsonToken;->END_OBJECT:Lcom/lewa/gson/stream/JsonToken;

    if-eq v0, v9, :cond_7

    .line 550
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    .line 551
    .local v7, name:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->nextInt()I

    move-result v8

    .line 552
    .local v8, value:I
    const-string v0, "year"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    move v1, v8

    goto :goto_1

    .line 554
    :cond_2
    const-string v0, "month"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 555
    move v2, v8

    goto :goto_1

    .line 556
    :cond_3
    const-string v0, "dayOfMonth"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 557
    move v3, v8

    goto :goto_1

    .line 558
    :cond_4
    const-string v0, "hourOfDay"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 559
    move v4, v8

    goto :goto_1

    .line 560
    :cond_5
    const-string v0, "minute"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 561
    move v5, v8

    goto :goto_1

    .line 562
    :cond_6
    const-string v0, "second"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    move v6, v8

    goto :goto_1

    .line 566
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #value:I
    :cond_7
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->endObject()V

    .line 567
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/lewa/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    check-cast p2, Ljava/util/Calendar;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/gson/internal/bind/TypeAdapters$23;->write(Lcom/lewa/gson/stream/JsonWriter;Ljava/util/Calendar;)V

    return-void
.end method

.method public write(Lcom/lewa/gson/stream/JsonWriter;Ljava/util/Calendar;)V
    .locals 2
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    if-nez p2, :cond_0

    .line 573
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->nullValue()Lcom/lewa/gson/stream/JsonWriter;

    .line 590
    :goto_0
    return-void

    .line 576
    :cond_0
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->beginObject()Lcom/lewa/gson/stream/JsonWriter;

    .line 577
    const-string v0, "year"

    invoke-virtual {p1, v0}, Lcom/lewa/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;

    .line 578
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/lewa/gson/stream/JsonWriter;->value(J)Lcom/lewa/gson/stream/JsonWriter;

    .line 579
    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/lewa/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;

    .line 580
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/lewa/gson/stream/JsonWriter;->value(J)Lcom/lewa/gson/stream/JsonWriter;

    .line 581
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/lewa/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;

    .line 582
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/lewa/gson/stream/JsonWriter;->value(J)Lcom/lewa/gson/stream/JsonWriter;

    .line 583
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/lewa/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;

    .line 584
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/lewa/gson/stream/JsonWriter;->value(J)Lcom/lewa/gson/stream/JsonWriter;

    .line 585
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/lewa/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;

    .line 586
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/lewa/gson/stream/JsonWriter;->value(J)Lcom/lewa/gson/stream/JsonWriter;

    .line 587
    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/lewa/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/lewa/gson/stream/JsonWriter;

    .line 588
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/lewa/gson/stream/JsonWriter;->value(J)Lcom/lewa/gson/stream/JsonWriter;

    .line 589
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonWriter;->endObject()Lcom/lewa/gson/stream/JsonWriter;

    goto :goto_0
.end method
