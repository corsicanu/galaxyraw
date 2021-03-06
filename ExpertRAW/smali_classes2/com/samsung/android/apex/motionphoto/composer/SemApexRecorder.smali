.class public Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;
.super Ljava/lang/Object;
.source "SemApexRecorder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

.field private mNativeContext:J

.field private mToken:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "apex_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_init()V

    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "listener should not null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->mListener:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_setup(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->mToken:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->setToken(I)V

    return-void
.end method

.method public static deinit()V
    .locals 0

    return-void
.end method

.method public static init()V
    .locals 0

    return-void
.end method

.method private static final native native_deinit()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getSurface()Landroid/view/Surface;
.end method

.method private static final native native_init()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;)I
.end method

.method private final native native_start(Ljava/lang/String;)V
.end method

.method private final native native_stop()V
.end method

.method private final native native_store(J)I
.end method

.method private final native native_store(Ljava/lang/String;)I
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getToken()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->mToken:I

    return p0
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->mListener:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_finalize()V

    return-void
.end method

.method public setErrorListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->mListener:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->setOnErrorListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;)V

    :cond_0
    return-void
.end method

.method public setInfoListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->mListener:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;->setOnInfoListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;)V

    :cond_0
    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_start(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 2

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_stop()V

    return-void
.end method

.method public store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)I
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->flatten()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_store(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public store(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_store(J)I

    return-void
.end method

.method public store(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->native_store(Ljava/lang/String;)I

    return-void
.end method
