.class Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;
.super Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;
.source "LegacyLedSystemEventListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;
    }
.end annotation


# static fields
.field private static final MSG_SYSTEM_COVER_EVENT:I = 0x0

.field private static final SYSTEM_EVENT_LED_OFF_COMMAND:Ljava/lang/String; = "led_off_command"

.field private static final TAG:Ljava/lang/String; = "LegacyLedSystemEventListenerDelegate"


# instance fields
.field private mHandler:Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;

.field private mListener:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->mListener:Ljava/lang/Object;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    new-instance p2, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;

    iget-object p3, p0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->mListener:Ljava/lang/Object;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getListener()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->mListener:Ljava/lang/Object;

    return-object p0
.end method

.method public onCoverTouchAccept()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onCoverTouchReject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onSystemCoverEvent(I[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate;->mHandler:Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/cover/LegacyLedSystemEventListenerDelegate$ListenerDelegateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    iput p1, p0, Landroid/os/Message;->arg1:I

    iput-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
