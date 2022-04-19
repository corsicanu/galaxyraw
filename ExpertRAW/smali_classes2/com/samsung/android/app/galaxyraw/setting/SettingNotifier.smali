.class Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;
.super Ljava/lang/Object;
.source "SettingNotifier.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/Engine$RequestQueueEmptyListener;
.implements Lcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;,
        Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$NotificationHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingNotifier"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

.field private final mListenersForAllChanges:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenersForSpecifiedChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNotificationHandler:Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$NotificationHandler;

.field private final mSettingNotifyValues:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mListenersForAllChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mListenersForSpecifiedChanges:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mSettingNotifyValues:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$NotificationHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$NotificationHandler;-><init>(Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mNotificationHandler:Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$NotificationHandler;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->handleNotification()V

    return-void
.end method

.method private handleNotification()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->isRequestQueueEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->notifyPendingSettingChanges()V

    :cond_1
    return-void
.end method

.method private notifySettingChange(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "prevValue",
            "nextValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    const-string v1, "SettingNotifier"

    if-eqz v0, :cond_0

    const-string p0, "notifySettingChange : ignore. Camera was destroyed"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySettingChange : key = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", prevValue = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", nextValue = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mListenersForAllChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mListenersForSpecifiedChanges:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->unregisterRequestQueueEmptyListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$RequestQueueEmptyListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    return-void
.end method

.method isNotificationExist()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mNotificationHandler:Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$NotificationHandler;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$NotificationHandler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method notifyPendingSettingChanges()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    const-string v1, "SettingNotifier"

    if-eqz v0, :cond_0

    const-string p0, "notifyPendingSettingChanges : ignore. Camera was destroyed"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mSettingNotifyValues:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyPendingSettingChanges : key size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mSettingNotifyValues:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mSettingNotifyValues:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mListenersForAllChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;

    iget-object v5, v2, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget v6, v2, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;->mPrevValue:I

    iget v7, v2, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;->mValue:I

    invoke-interface {v4, v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mListenersForSpecifiedChanges:Ljava/util/Map;

    iget-object v4, v2, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;

    iget-object v5, v2, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget v6, v2, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;->mPrevValue:I

    iget v7, v2, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;->mValue:I

    invoke-interface {v4, v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V

    goto :goto_2

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mSettingNotifyValues:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-void
.end method

.method public onEmpty()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->notifyPendingSettingChanges()V

    return-void
.end method

.method public onSettingValueChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "prevValue",
            "nextValue",
            "needSyncNoti"
        }
    .end annotation

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->notifySettingChange(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V

    goto :goto_0

    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSettingValueChanged : key="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ", previous value="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ", value="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "SettingNotifier"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p4, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mSettingNotifyValues:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$SettingNotifyValue;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;IILcom/samsung/android/app/galaxyraw/setting/SettingNotifier$1;)V

    invoke-virtual {p4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mNotificationHandler:Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$NotificationHandler;

    const/16 p1, 0xa

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method registerAllCameraSettingsChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mListenersForAllChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mListenersForAllChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mListenersForSpecifiedChanges:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mListenersForSpecifiedChanges:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-interface {p2, p1, p0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;->onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V

    return-void
.end method

.method resetListeners()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mListenersForAllChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mListenersForSpecifiedChanges:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method setEngine(Lcom/samsung/android/app/galaxyraw/interfaces/Engine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mEngine:Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->registerRequestQueueEmptyListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$RequestQueueEmptyListener;)V

    return-void
.end method

.method unregisterAllCameraSettingsChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mListenersForAllChanges:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "listener"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingNotifier;->mListenersForSpecifiedChanges:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p0, :cond_0

    const-string p0, "SettingNotifier"

    const-string p1, "Could not find listener. return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
