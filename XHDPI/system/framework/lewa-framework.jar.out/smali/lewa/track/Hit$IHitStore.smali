.class public interface abstract Llewa/track/Hit$IHitStore;
.super Ljava/lang/Object;
.source "Hit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/track/Hit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHitStore"
.end annotation


# virtual methods
.method public abstract deleteHit(J)V
.end method

.method public abstract getNumStoredHits()I
.end method

.method public abstract getVisitorCustomVar(I)Ljava/lang/String;
.end method

.method public abstract loadExistingSession()V
.end method

.method public abstract peekHits()[Llewa/track/Hit;
.end method

.method public abstract peekHits(I)[Llewa/track/Hit;
.end method

.method public abstract putEvent(Llewa/track/Event;)V
.end method

.method public abstract setSampleRate(I)V
.end method

.method public abstract startNewVisit()V
.end method
