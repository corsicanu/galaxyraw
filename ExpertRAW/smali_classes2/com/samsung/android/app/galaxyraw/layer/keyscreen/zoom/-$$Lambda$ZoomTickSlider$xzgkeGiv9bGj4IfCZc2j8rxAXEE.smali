.class public final synthetic Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomTickSlider$xzgkeGiv9bGj4IfCZc2j8rxAXEE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;

.field public final synthetic f$1:Landroid/util/SparseIntArray;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;Landroid/util/SparseIntArray;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomTickSlider$xzgkeGiv9bGj4IfCZc2j8rxAXEE;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomTickSlider$xzgkeGiv9bGj4IfCZc2j8rxAXEE;->f$1:Landroid/util/SparseIntArray;

    iput p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomTickSlider$xzgkeGiv9bGj4IfCZc2j8rxAXEE;->f$2:I

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomTickSlider$xzgkeGiv9bGj4IfCZc2j8rxAXEE;->f$0:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;

    iget-object v2, v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomTickSlider$xzgkeGiv9bGj4IfCZc2j8rxAXEE;->f$1:Landroid/util/SparseIntArray;

    iget v3, v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/-$$Lambda$ZoomTickSlider$xzgkeGiv9bGj4IfCZc2j8rxAXEE;->f$2:I

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/zoom/ZoomTickSlider;->lambda$addShortcutBarImageView$3$ZoomTickSlider(Landroid/util/SparseIntArray;ILandroid/view/View;IIIIIIII)V

    return-void
.end method
