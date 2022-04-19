.class public final synthetic Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$xNF8h-1x6Ky9L3P_k54H99j64g8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/WatchServiceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$xNF8h-1x6Ky9L3P_k54H99j64g8;->f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$WatchServiceManager$xNF8h-1x6Ky9L3P_k54H99j64g8;->f$0:Lcom/samsung/android/app/galaxyraw/WatchServiceManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/WatchServiceManager;->lambda$connectExtraPreviewToWatchDisplay$1$WatchServiceManager(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
