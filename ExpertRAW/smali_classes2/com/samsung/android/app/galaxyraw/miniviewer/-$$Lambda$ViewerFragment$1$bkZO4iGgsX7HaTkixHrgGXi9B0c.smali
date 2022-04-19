.class public final synthetic Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$1$bkZO4iGgsX7HaTkixHrgGXi9B0c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$1;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$1;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$1$bkZO4iGgsX7HaTkixHrgGXi9B0c;->f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$1;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$1$bkZO4iGgsX7HaTkixHrgGXi9B0c;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$1$bkZO4iGgsX7HaTkixHrgGXi9B0c;->f$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$1;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$1$bkZO4iGgsX7HaTkixHrgGXi9B0c;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$1;->lambda$onChange$0$ViewerFragment$1(Landroid/net/Uri;)V

    return-void
.end method
