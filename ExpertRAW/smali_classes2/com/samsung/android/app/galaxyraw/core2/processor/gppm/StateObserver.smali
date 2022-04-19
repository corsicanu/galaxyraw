.class public Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/StateObserver;
.super Landroid/database/ContentObserver;
.source "StateObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StateObserver"


# instance fields
.field private final eventHandler:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/IEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/IEventHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handler",
            "eventHandler"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/StateObserver;->eventHandler:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/IEventHandler;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selfChange",
            "uri"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/StateObserver;->eventHandler:Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/IEventHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/samsung/android/app/galaxyraw/core2/processor/gppm/IEventHandler;->onStateChanged(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
