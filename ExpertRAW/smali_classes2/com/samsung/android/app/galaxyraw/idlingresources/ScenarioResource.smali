.class public Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;
.super Ljava/lang/Object;
.source "ScenarioResource.java"

# interfaces
.implements Landroidx/test/espresso/IdlingResource;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScenarioResource"


# instance fields
.field private volatile mBecameBusyAt:J

.field private volatile mBecameIdleAt:J

.field private final mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDebug:Z

.field private volatile mResourceCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

.field private final mResourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceName"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceName",
            "debug"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->mResourceName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->mDebug:Z

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->mBecameBusyAt:J

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->mBecameIdleAt:J

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "resourceName cannot be empty or null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public end()V
    .locals 0

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->mResourceName:Ljava/lang/String;

    return-object p0
.end method

.method public isIdleNow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public registerIdleTransitionCallback(Landroidx/test/espresso/IdlingResource$ResourceCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceCallback"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/idlingresources/ScenarioResource;->mResourceCallback:Landroidx/test/espresso/IdlingResource$ResourceCallback;

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
