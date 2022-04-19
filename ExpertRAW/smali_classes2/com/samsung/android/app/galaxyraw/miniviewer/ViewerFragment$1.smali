.class Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$1;
.super Landroid/database/ContentObserver;
.source "ViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->enableContentObserver(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "handler"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChange$0$ViewerFragment$1(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$100(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;Landroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
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

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentObserver#onChange - URI: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewerFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$1;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$000(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$1$bkZO4iGgsX7HaTkixHrgGXi9B0c;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$1$bkZO4iGgsX7HaTkixHrgGXi9B0c;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$1;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
