.class public Llewa/track/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field static final INSTALL_EVENT_CATEGORY:Ljava/lang/String; = "__##EVENT_INSTALL##__"


# instance fields
.field final accountId:Ljava/lang/String;

.field final action:Ljava/lang/String;

.field final category:Ljava/lang/String;

.field customVariableBuffer:Llewa/track/CustomVariableBuffer;

.field final eventId:J

.field final label:Ljava/lang/String;

.field private timestampCurrent:J

.field private timestampFirst:J

.field private timestampPrevious:J

.field private userId:I

.field final value:I

.field private visits:I


# direct methods
.method constructor <init>(JLjava/lang/String;JJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "eventId"
    .parameter "accountId"
    .parameter "tstampFirst"
    .parameter "tstampSecond"
    .parameter "tstampCurrent"
    .parameter "visit"
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-wide p1, p0, Llewa/track/Event;->eventId:J

    .line 76
    iput-object p3, p0, Llewa/track/Event;->accountId:Ljava/lang/String;

    .line 77
    iput-wide p4, p0, Llewa/track/Event;->timestampFirst:J

    .line 78
    iput-wide p6, p0, Llewa/track/Event;->timestampPrevious:J

    .line 79
    iput-wide p8, p0, Llewa/track/Event;->timestampCurrent:J

    .line 80
    iput p10, p0, Llewa/track/Event;->visits:I

    .line 81
    iput-object p11, p0, Llewa/track/Event;->category:Ljava/lang/String;

    .line 82
    iput-object p12, p0, Llewa/track/Event;->action:Ljava/lang/String;

    .line 83
    iput-object p13, p0, Llewa/track/Event;->label:Ljava/lang/String;

    .line 84
    iput p14, p0, Llewa/track/Event;->value:I

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Llewa/track/Event;->userId:I

    .line 86
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 15
    .parameter "accountId"
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 89
    const-wide/16 v1, -0x1

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, -0x1

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Llewa/track/Event;-><init>(JLjava/lang/String;JJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method constructor <init>(Llewa/track/Event;Ljava/lang/String;)V
    .locals 16
    .parameter "paramEvent"
    .parameter "paramString"

    .prologue
    .line 63
    move-object/from16 v0, p1

    iget-wide v2, v0, Llewa/track/Event;->eventId:J

    move-object/from16 v0, p1

    iget-wide v5, v0, Llewa/track/Event;->timestampFirst:J

    move-object/from16 v0, p1

    iget-wide v7, v0, Llewa/track/Event;->timestampPrevious:J

    move-object/from16 v0, p1

    iget-wide v9, v0, Llewa/track/Event;->timestampCurrent:J

    move-object/from16 v0, p1

    iget v11, v0, Llewa/track/Event;->visits:I

    move-object/from16 v0, p1

    iget-object v12, v0, Llewa/track/Event;->category:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Llewa/track/Event;->action:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Llewa/track/Event;->label:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v15, v0, Llewa/track/Event;->value:I

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v15}, Llewa/track/Event;-><init>(JLjava/lang/String;JJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    move-object/from16 v0, p1

    iget v1, v0, Llewa/track/Event;->userId:I

    move-object/from16 v0, p0

    iput v1, v0, Llewa/track/Event;->userId:I

    .line 69
    move-object/from16 v0, p1

    iget-object v1, v0, Llewa/track/Event;->customVariableBuffer:Llewa/track/CustomVariableBuffer;

    move-object/from16 v0, p0

    iput-object v1, v0, Llewa/track/Event;->customVariableBuffer:Llewa/track/CustomVariableBuffer;

    .line 70
    return-void
.end method


# virtual methods
.method public getCustomVariableBuffer()Llewa/track/CustomVariableBuffer;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Llewa/track/Event;->customVariableBuffer:Llewa/track/CustomVariableBuffer;

    return-object v0
.end method

.method getTimestampCurrent()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Llewa/track/Event;->timestampCurrent:J

    return-wide v0
.end method

.method getTimestampFirst()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Llewa/track/Event;->timestampFirst:J

    return-wide v0
.end method

.method getTimestampPrevious()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Llewa/track/Event;->timestampPrevious:J

    return-wide v0
.end method

.method getUserId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Llewa/track/Event;->userId:I

    return v0
.end method

.method getVisits()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Llewa/track/Event;->visits:I

    return v0
.end method

.method public isSessionInitialized()Z
    .locals 4

    .prologue
    .line 113
    iget-wide v0, p0, Llewa/track/Event;->timestampFirst:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCustomVariableBuffer(Llewa/track/CustomVariableBuffer;)V
    .locals 0
    .parameter "paramCustomVariableBuffer"

    .prologue
    .line 109
    iput-object p1, p0, Llewa/track/Event;->customVariableBuffer:Llewa/track/CustomVariableBuffer;

    .line 110
    return-void
.end method

.method setTimestampCurrent(J)V
    .locals 0
    .parameter "timeStamp"

    .prologue
    .line 37
    iput-wide p1, p0, Llewa/track/Event;->timestampCurrent:J

    .line 38
    return-void
.end method

.method setTimestampFirst(J)V
    .locals 0
    .parameter "timeStamp"

    .prologue
    .line 21
    iput-wide p1, p0, Llewa/track/Event;->timestampFirst:J

    .line 22
    return-void
.end method

.method setTimestampPrevious(J)V
    .locals 0
    .parameter "timeStamp"

    .prologue
    .line 29
    iput-wide p1, p0, Llewa/track/Event;->timestampPrevious:J

    .line 30
    return-void
.end method

.method setUserId(I)V
    .locals 0
    .parameter "paramInt"

    .prologue
    .line 53
    iput p1, p0, Llewa/track/Event;->userId:I

    .line 54
    return-void
.end method

.method setVisits(I)V
    .locals 0
    .parameter "paramInt"

    .prologue
    .line 45
    iput p1, p0, Llewa/track/Event;->visits:I

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Llewa/track/Event;->eventId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestampCurrent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Llewa/track/Event;->timestampCurrent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestampPrevious:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Llewa/track/Event;->timestampPrevious:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestampFirst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Llewa/track/Event;->timestampFirst:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "visits:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llewa/track/Event;->visits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llewa/track/Event;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llewa/track/Event;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llewa/track/Event;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llewa/track/Event;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
