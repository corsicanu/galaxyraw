.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$AuJYHy9yuQFuZVey1HLn6VN7oJ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;Landroid/graphics/Bitmap;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$AuJYHy9yuQFuZVey1HLn6VN7oJ8;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$AuJYHy9yuQFuZVey1HLn6VN7oJ8;->f$1:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$AuJYHy9yuQFuZVey1HLn6VN7oJ8;->f$2:I

    iput-boolean p4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$AuJYHy9yuQFuZVey1HLn6VN7oJ8;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$AuJYHy9yuQFuZVey1HLn6VN7oJ8;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$AuJYHy9yuQFuZVey1HLn6VN7oJ8;->f$1:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$AuJYHy9yuQFuZVey1HLn6VN7oJ8;->f$2:I

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/-$$Lambda$LeftButtonView$AuJYHy9yuQFuZVey1HLn6VN7oJ8;->f$3:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/leftbutton/LeftButtonView;->lambda$updateQuickViewThumbnail$4$LeftButtonView(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method
