.class public Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;
.super Ljava/lang/Object;
.source "CameraOrientationEventManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;
    }
.end annotation


# static fields
.field private static final ORIENTATION_CHANGE_MARGIN_IN_DEGREE:I = 0xa

.field private static final SENSORHUB_SERVICE_NAME:Ljava/lang/String; = "scontext"

.field private static final TAG:Ljava/lang/String; = "CameraOrientationEvtMgr"

.field private static mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

.field private static final mInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private mIsSemContextListenerAvailable:Z

.field private mLastOrientation:I

.field private final mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mIsSemContextListenerAvailable:Z

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mLastOrientation:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mLastOrientation:I

    return p0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->notifyOrientationChanged(I)V

    return-void
.end method

.method public static clear()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private convertSemContextOrientationToDegree(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sContextOrientation"
        }
    .end annotation

    const/4 p0, -0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_4

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    :cond_0
    move p0, v0

    goto :goto_0

    :cond_1
    const/16 p0, 0x5a

    goto :goto_0

    :cond_2
    const/16 p0, 0xb4

    goto :goto_0

    :cond_3
    const/16 p0, 0x10e

    :cond_4
    :goto_0
    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initialize()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mApplicationContext:Landroid/content/Context;

    const-string v1, "scontext"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/context/SemContextManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mIsSemContextListenerAvailable:Z

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mIsSemContextListenerAvailable:Z

    const-string v1, "CameraOrientationEvtMgr"

    if-eqz v0, :cond_2

    const-string p0, "using SemContextListener"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "using OrientationEventListener of android"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$1;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$1;-><init>(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_3
    :goto_0
    return-void
.end method

.method private notifyOrientationChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, "CameraOrientationEvtMgr"

    const-string p1, "notifyOrientationChanged - ORIENTATION_UNKNOWN"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mLastOrientation:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mLastOrientation:I

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;->onCameraOrientationChanged(I)V

    goto :goto_0

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public disable()V
    .locals 2

    const-string v0, "CameraOrientationEvtMgr"

    const-string v1, "orientation listener disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mIsSemContextListenerAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_1
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mLastOrientation:I

    return-void
.end method

.method public enable(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orientation listener enabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraOrientationEvtMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mLastOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->convertSemContextOrientationToDegree(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->notifyOrientationChanged(I)V

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mIsSemContextListenerAvailable:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mSemContextManager:Lcom/samsung/android/hardware/context/SemContextManager;

    const/4 v0, 0x6

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;I)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    :goto_0
    return-void
.end method

.method public getLastOrientation()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mLastOrientation:I

    return p0
.end method

.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getAutoRotationContext()Lcom/samsung/android/hardware/context/SemContextAutoRotation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextAutoRotation;->getAngle()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->convertSemContextOrientationToDegree(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->notifyOrientationChanged(I)V

    :goto_0
    return-void
.end method

.method public registerListener(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mLastOrientation:I

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;->onCameraOrientationChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterListener(Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraOrientationEventManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
