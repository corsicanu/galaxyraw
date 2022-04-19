.class Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "NfcLedCoverTouchListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# static fields
.field private static final MSG_LISTEN_COVER_TOUCH_ACCEPT:I = 0x0

.field private static final MSG_LISTEN_COVER_TOUCH_REJECT:I = 0x1

.field private static final MSG_LISTEN_COVER_TOUCH_REJECT_TAP_LEFT:I = 0x2

.field private static final MSG_LISTEN_COVER_TOUCH_REJECT_TAP_MID:I = 0x3

.field private static final MSG_LISTEN_COVER_TOUCH_REJECT_TAP_RIGHT:I = 0x4


# instance fields
.field private mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

.field private mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    new-instance p2, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    iget-object p3, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    return-void
.end method


# virtual methods
.method public getListener()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    return-object p0
.end method

.method public onCoverTapLeft()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCoverTapMid()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCoverTapRight()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCoverTouchAccept()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCoverTouchReject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/cover/NfcLedCoverTouchListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
