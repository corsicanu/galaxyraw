.class public Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;
.super Ljava/lang/Object;
.source "AppStateInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface$AppStateObserver;
    }
.end annotation


# static fields
.field public static final APP_STATE_BG:I = 0x2

.field public static final APP_STATE_FG:I = 0x1

.field private static volatile mAppStateInstance:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;


# instance fields
.field private TAG:Ljava/lang/String;

.field private volatile mObserver:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface$AppStateObserver;

.field public mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AppStateInterface"

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method private execute()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->mObserver:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface$AppStateObserver;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->TAG:Ljava/lang/String;

    const-string v0, "observer is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->mObserver:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface$AppStateObserver;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->mStatus:I

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface$AppStateObserver;->receiveUpdate(I)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->mAppStateInstance:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->mAppStateInstance:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->mAppStateInstance:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;

    return-object v0
.end method


# virtual methods
.method public setObserver(Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface$AppStateObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->mObserver:Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface$AppStateObserver;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->execute()V

    return-void
.end method

.method public setStatus(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->mStatus:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatus invoked state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/core2/AppStateInterface;->execute()V

    return-void
.end method
