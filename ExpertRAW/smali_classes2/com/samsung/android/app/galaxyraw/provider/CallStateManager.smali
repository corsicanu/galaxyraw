.class public Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;
.super Ljava/lang/Object;
.source "CallStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;
    }
.end annotation


# static fields
.field private static final ACTION_MEDIA_AUDIO_MODE:Ljava/lang/String; = "android.samsung.media.action.AUDIO_MODE"

.field private static final DELAY_TIME_TO_FINISH_OTHER_VT_CALL:I = 0x7d0

.field private static final EXTRA_VALUE_AUDIO_MODE:Ljava/lang/String; = "android.samsung.media.extra.AUDIO_MODE"

.field private static final TAG:Ljava/lang/String; = "CallStateManager"


# instance fields
.field private mAudioModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallCallStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mFinishOtherVtCallRunnable:Ljava/lang/Runnable;

.field private mInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCallCallStateListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mInfoList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$CallStateManager$kF26NG0rALIaaeEOVZc8GhLVH_o;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$CallStateManager$kF26NG0rALIaaeEOVZc8GhLVH_o;-><init>(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mFinishOtherVtCallRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$1;-><init>(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mAudioModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->onAudioModeChanged(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->isPopupCallSupported()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mFinishOtherVtCallRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static isCalling(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->isOffHook(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->isInCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->isOtherVTCallOngoing(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isInCall(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p0

    return p0
.end method

.method public static isOffHook(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->semGetCallState(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isOtherVTCallOngoing(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOtherVTCallOngoing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CallStateManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isPopupCallSupported()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "call_popup_type_list"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isVTCallOngoing(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->semIsVideoCall()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVTCallOngoing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onAudioModeChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    const-string v0, "android.samsung.media.extra.AUDIO_MODE"

    const/4 v1, -0x2

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioModeChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    new-instance p0, Landroid/content/Intent;

    const-string p2, "camera.action.CALL_STATE_OFFHOOK"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->isCalling(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x0

    invoke-interface {p0, p2, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    new-instance p0, Landroid/content/Intent;

    const-string p2, "camera.action.CALL_STATE_IDLE"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private registerAudioModeReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mAudioModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerCallStateListener(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private registerCallStateListener(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "subscriptionId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/16 p2, 0x20

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private unregisterAudioModeReceiver()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mAudioModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterAudioModeReceiver : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CallStateManager"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private unregisterCallStateListener(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private unregisterCallStateListener(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "subscriptionId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$CallStateManager()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->isOtherVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.CALL_STATE_IDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$registerCallStateListeners$1$CallStateManager(Landroid/telephony/SubscriptionInfo;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;-><init>(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$1;)V

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->registerCallStateListener(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCallCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerCallStateListeners()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCallCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "CallStateManager"

    const-string v0, "registerCallStateListeners - returned because allCallStateListener have already registered"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mInfoList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mInfoList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$CallStateManager$Ch9O-5dgSUE9_WZbpYbmS_pqIS0;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$CallStateManager$Ch9O-5dgSUE9_WZbpYbmS_pqIS0;-><init>(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;-><init>(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$1;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->registerCallStateListener(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCallCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->registerAudioModeReceiver()V

    return-void
.end method

.method public unregisterCallStateListeners()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCallCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mInfoList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCallCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->unregisterCallStateListener(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCallCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->unregisterCallStateListener(Lcom/samsung/android/app/galaxyraw/provider/CallStateManager$CallStateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->mCallCallStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CallStateManager;->unregisterAudioModeReceiver()V

    return-void
.end method
