.class Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;
.super Ljava/lang/Object;
.source "ShootingModeProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShootingMode"
.end annotation


# instance fields
.field private mIsViewInitialized:Z

.field private final mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

.field private final mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "presenter"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->mIsViewInitialized:Z

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;-><init>(Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->isViewInitialized()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->getView()Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->setViewInitialized(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;)Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->getPresenter()Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    move-result-object p0

    return-object p0
.end method

.method private getPresenter()Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->mPresenter:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModePresenter;

    return-object p0
.end method

.method private getView()Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractShootingModeView;

    return-object p0
.end method

.method private isViewInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->mIsViewInitialized:Z

    return p0
.end method

.method private setViewInitialized(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialized"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/ShootingModeProviderImpl$ShootingMode;->mIsViewInitialized:Z

    return-void
.end method
