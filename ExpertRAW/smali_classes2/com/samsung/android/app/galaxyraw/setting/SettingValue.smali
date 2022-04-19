.class Lcom/samsung/android/app/galaxyraw/setting/SettingValue;
.super Ljava/lang/Object;
.source "SettingValue.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/setting/ValueSetter;
.implements Lcom/samsung/android/app/galaxyraw/setting/ValueGetter;


# static fields
.field private static final INITIALIZATION_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "SettingValue"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mDefaultValue:I

.field mDimCount:I

.field mIsInitialized:Z

.field mIsPreferenceType:Z

.field final mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field mNeedToSave:Z

.field private final mObserver:Lcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;

.field mOverriddenValue:I

.field mSavedValue:I

.field mValue:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "observer",
            "key"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mSavedValue:I

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mObserver:Lcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mDimCount:I

    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mIsInitialized:Z

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mIsPreferenceType:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mIsPreferenceType:Z

    :goto_0
    return-void
.end method

.method private waitInitialization()V
    .locals 5

    const-string v0, "SettingValue"

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mIsInitialized:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitInitialization. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "waitInitialization : wait timeout!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interrupted while waiting latch. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method dimValue(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->waitInitialization()V

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mDimCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mDimCount:I

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    :cond_1
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->notifyCameraSettingChanged(IIZ)V

    :cond_2
    return-void
.end method

.method public get()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mIsPreferenceType:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mDefaultValue:I

    invoke-static {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    return p0
.end method

.method handleSettingChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->notifyCameraSettingChanged(IIZ)V

    return-void
.end method

.method initDefaultValues(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mDefaultValue:I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    return-void
.end method

.method initValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mIsInitialized:Z

    return-void
.end method

.method notifyCameraSettingChanged(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "prevValue",
            "nextValue",
            "needSyncNoti"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mObserver:Lcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/SettingValueObserver;->onSettingValueChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;IIZ)V

    return-void
.end method

.method restoreValue()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mDimCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mDimCount:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-gez v0, :cond_1

    iput v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mDimCount:I

    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    iget-boolean v3, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mNeedToSave:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mNeedToSave:Z

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mSavedValue:I

    if-eq v2, v4, :cond_3

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    if-ne v3, v2, :cond_2

    if-eq v0, v2, :cond_5

    :cond_2
    iput v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    iput v4, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mSavedValue:I

    iput v4, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->notifyCameraSettingChanged(IIZ)V

    return-void

    :cond_3
    if-eq v0, v4, :cond_5

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    if-eq v0, v2, :cond_5

    iput v4, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    iput v4, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mSavedValue:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->notifyCameraSettingChanged(IIZ)V

    return-void

    :cond_4
    if-eq v0, v4, :cond_5

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    if-eq v0, v2, :cond_5

    iput v4, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    iput v4, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mSavedValue:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->notifyCameraSettingChanged(IIZ)V

    return-void

    :cond_5
    iput v4, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    iput v4, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mSavedValue:I

    return-void
.end method

.method public set(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getType()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;->REPRESENTATIVE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Type;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->get()I

    move-result v0

    if-eq v0, p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->waitInitialization()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set : key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , isPreferenceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mIsPreferenceType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingValue"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    if-ne v1, v2, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->notifyCameraSettingChanged(IIZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->notifyCameraSettingChanged(IIZ)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not access directly to Representative type - key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setPreferenceType(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPreferenceType"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mIsPreferenceType:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    invoke-static {p1, v0, p0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->removePreferences(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
