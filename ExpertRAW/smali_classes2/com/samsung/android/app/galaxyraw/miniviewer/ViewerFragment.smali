.class public Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;
.super Landroidx/fragment/app/Fragment;
.source "ViewerFragment.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;
    }
.end annotation


# static fields
.field private static final CLICK_BLOCK_DURATION_IN_MS:I = 0x3e8

.field private static final KEY_LR_TOAST_DISPLAY_COUNT:Ljava/lang/String; = "lr_toast_display_count_key"

.field private static final LR_TOAST_MAX_DISPLAY_COUNT:I = 0x3

.field private static final SINGLE_SPACE:Ljava/lang/String; = " "

.field private static final TAB_SPACE:Ljava/lang/String; = "    "

.field private static final TAG:Ljava/lang/String; = "ViewerFragment"


# instance fields
.field private mAttentionAnimator:Landroid/animation/ValueAnimator;

.field private mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurrSystemUIVisibility:I

.field private mGetAddressTask:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;

.field private mImageViewPagerAdapter:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

.field private mImageViewPagerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsClickAvailable:Z

.field private mIsDelayedToastShowNeeded:Z

.field private mIsFromDelete:Z

.field private mIsImageZoomed:Z

.field private mIsToastShownInCurrentSession:Z

.field private mMetadataListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

.field private mViewPagerPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mMetadataListItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsFromDelete:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsImageZoomed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsClickAvailable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Lcom/samsung/android/app/galaxyraw/GalaxyRaw;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->updateDraftWithFinalImage(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->updateMetadataVisibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    return p0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerAdapter:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->updateViewsForCurrentImage(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->updateMetadataForCurrentImage(I)V

    return-void
.end method

.method private cancelGetAddressTask()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mGetAddressTask:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const-string v0, "ViewerFragment"

    const-string v1, "cancelGetAddressTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mGetAddressTask:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mGetAddressTask:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;

    :cond_1
    return-void
.end method

.method private createMetadataAdapter()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mMetadataListItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataDetailsPage:Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->setAdapter(Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataAdapter;)V

    return-void
.end method

.method private createViewPagerAdapter()V
    .locals 23

    move-object/from16 v1, p0

    const-string v0, "!@#$%^"

    const-string v2, "ViewerFragment"

    const-string v3, "createViewPagerAdapter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "_id"

    const-string v5, "_data"

    const-string v6, "datetime"

    const-string v7, "orientation"

    const-string v8, "sef_file_type"

    const-string v9, "latitude"

    const-string v10, "longitude"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id, _data, datetime, orientation, sef_file_type, latitude, longitude"

    :try_start_0
    iget-object v6, v1, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLatestMedia()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v5, v4, v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$LatestMedia;->getCursorForQuery(Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "_data"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v8, "sef_file_type"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "orientation"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "latitude"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "longitude"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto :goto_1

    :cond_0
    const/4 v13, -0x1

    :goto_1
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/4 v7, 0x2

    new-array v7, v7, [D

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    const/16 v20, 0x0

    aput-wide v16, v7, v20

    const/16 v16, 0x1

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v21

    aput-wide v21, v7, v16

    move/from16 v21, v5

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is not yet created"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, v20

    move/from16 v5, v21

    goto :goto_0

    :cond_1
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0xb70

    if-ne v13, v5, :cond_2

    new-instance v5, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    move/from16 v22, v6

    const-string v6, ""

    invoke-virtual {v12, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    move v6, v13

    move-object v13, v5

    move/from16 v17, v6

    move-object/from16 v19, v7

    invoke-direct/range {v13 .. v19}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;-><init>(JLjava/lang/String;II[D)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move/from16 v22, v6

    goto :goto_2

    :cond_3
    move/from16 v22, v6

    move v6, v13

    new-instance v5, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    move-object v13, v5

    move-object/from16 v16, v12

    move/from16 v17, v6

    move-object/from16 v19, v7

    invoke-direct/range {v13 .. v19}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;-><init>(JLjava/lang/String;II[D)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    move/from16 v7, v20

    move/from16 v5, v21

    move/from16 v6, v22

    goto/16 :goto_0

    :cond_4
    if-eqz v4, :cond_6

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_5

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while scanning media "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_4
    iput-object v3, v1, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    iget-object v2, v1, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iget-object v3, v1, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Ljava/util/ArrayList;Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView$ImageViewEventListener;)V

    iput-object v0, v1, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerAdapter:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    return-void
.end method

.method private enableContentObserver(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableContentObserver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$1;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$1;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mContentObserver:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/Constants;->CORE2_DB_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$4CzvbMKSaAN00kxZsyN-11iT1oA;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$4CzvbMKSaAN00kxZsyN-11iT1oA;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method private extractImageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const/16 p0, 0x2f

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\."

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private hideLightRoomHelpToast(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needMetadataVisibilityUpdate"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->isLightRoomToastVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->lrToastLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->stopAttentionAnimation()V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mOrientation:I

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsImageZoomed:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private initOrientation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->getRotation()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mOrientation:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->foreground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$hskI6297iO-VYkzYkl40iXXsPvQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$hskI6297iO-VYkzYkl40iXXsPvQ;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private initializeViewPager()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerAdapter:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->setPageMargin(I)V

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mOrientation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v1, v1

    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerAdapter:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerAdapter:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$2;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->setCurrentItem(IZ)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->updateMetadataVisibility()V

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    if-nez v0, :cond_2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->updateViewsForCurrentImage(IZ)V

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->updateMetadataForCurrentImage(I)V

    :cond_2
    return-void
.end method

.method private isLightRoomToastShowNeeded()Z
    .locals 7

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_CHINA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const-string v1, "ViewerFragment"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "isLightRoomToastShowNeeded - No, LR not supported in china."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsToastShownInCurrentSession:Z

    if-eqz v0, :cond_1

    const-string p0, "isLightRoomToastShowNeeded - No, already shown in current session."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    const-string v3, "lr_toast_display_count_key"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLightRoomToastShowNeeded - No, max count reached: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3

    const-string v0, "isLightRoomToastShowNeeded - Delayed show"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsDelayedToastShowNeeded:Z

    return v2

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsDelayedToastShowNeeded:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    add-int/2addr v0, v6

    invoke-static {p0, v3, v0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLightRoomToastShowNeeded - Yes, display count: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private isLightRoomToastVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->lrToastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$onCreateView$6(Landroid/view/MotionEvent;Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->getPrimaryImageView()Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public static synthetic lambda$vjV4pI7QAP6km5qsfXBlMN70PV8(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method private onDeleteButtonClicked()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->setClickBlock(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->hideLightRoomHelpToast(Z)V

    const-string v0, "0194"

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->DELETE_IMAGE_FROM_MINIVIEWER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    return-void
.end method

.method private onLightRoomButtonClicked()V
    .locals 3

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->setClickBlock(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->hideLightRoomHelpToast(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    const/4 v1, 0x3

    const-string v2, "lr_toast_display_count_key"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->launchLightRoom()V

    return-void
.end method

.method private onShareButtonClicked()V
    .locals 6

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->setClickBlock(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->hideLightRoomHelpToast(Z)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    iget v5, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "com.samsung.android.app.galaxyraw.FileProvider"

    invoke-static {v2, v4, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "Share Image"

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private processBack()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsFromDelete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$wPFpHUf1vZRLziD_oHwg5o9Cf8I;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$wPFpHUf1vZRLziD_oHwg5o9Cf8I;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$QLQcEmqQeCb51nxhzZAgHvgIWLg;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$QLQcEmqQeCb51nxhzZAgHvgIWLg;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private setClickBlock(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mSec"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsClickAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "ViewerFragment"

    const-string p1, "setClickBlock: Click blocked."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsClickAvailable:Z

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$6wpPY_8ZrSOsD7HarMuFeCsJmyM;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$6wpPY_8ZrSOsD7HarMuFeCsJmyM;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private showLightRoomHelpToast()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsToastShownInCurrentSession:Z

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mOrientation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->lrToastLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->startAttentionAnimation()V

    return-void
.end method

.method private startAttentionAnimation()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mAttentionAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$vjV4pI7QAP6km5qsfXBlMN70PV8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$vjV4pI7QAP6km5qsfXBlMN70PV8;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070250

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    neg-float v0, v0

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mAttentionAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mAttentionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mAttentionAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$jLUNcQbmCmTaay7CY0Li01sMnKA;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$jLUNcQbmCmTaay7CY0Li01sMnKA;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mAttentionAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mAttentionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mAttentionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$3;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mAttentionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private stopAttentionAnimation()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mAttentionAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$vjV4pI7QAP6km5qsfXBlMN70PV8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$vjV4pI7QAP6km5qsfXBlMN70PV8;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateDraftWithFinalImage(Landroid/net/Uri;)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, ".dng"

    const-string v2, ".jpg"

    const-string v3, "_data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDraftWithFinalImage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v6, p1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v11, "ViewerFragment"

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_8

    :try_start_1
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v15}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->extractImageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget-object v7, v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    iget-object v7, v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getSecMediaId()J

    move-result-wide v13

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getSefType()I

    move-result v3

    const/16 v7, 0xb70

    if-eq v3, v7, :cond_1

    const-string v0, "updateDraftWithFinalImage: current image is not draft, return."

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    :cond_1
    :try_start_3
    iget-object v7, v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getOrientation()I

    move-result v7

    iget-object v8, v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {v8}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getLocation()[D

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-virtual {v15, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The DNG corresponding to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not saved due to partial merge fail, draft JPG was recovered as final."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    move-object v12, v2

    move/from16 v16, v3

    move/from16 v17, v7

    move-object/from16 v18, v8

    invoke-direct/range {v12 .. v18}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;-><init>(JLjava/lang/String;II[D)V

    invoke-virtual {v1, v6, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v9, v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {v15, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v16, v10

    move-wide/from16 v17, v13

    move/from16 v20, v3

    move/from16 v21, v7

    move-object/from16 v22, v8

    invoke-direct/range {v16 .. v22}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;-><init>(JLjava/lang/String;II[D)V

    invoke-virtual {v9, v6, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    add-int/lit8 v2, v6, 0x1

    new-instance v9, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    move-object v12, v9

    move/from16 v16, v3

    move/from16 v17, v7

    move-object/from16 v18, v8

    invoke-direct/range {v12 .. v18}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;-><init>(JLjava/lang/String;II[D)V

    invoke-virtual {v1, v2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerAdapter:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->notifyDataSetChanged()V

    iget v1, v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    const/4 v2, 0x1

    if-ne v1, v6, :cond_5

    invoke-direct {v0, v6, v2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->updateViewsForCurrentImage(IZ)V

    invoke-direct {v0, v6}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->updateMetadataForCurrentImage(I)V

    goto :goto_2

    :cond_5
    if-le v1, v6, :cond_6

    iget-object v1, v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    iget v0, v0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->setCurrentItem(IZ)V

    :cond_6
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_7

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw v1

    :cond_8
    :goto_4
    if-eqz v4, :cond_9

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDraftWithFinalImage failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_5
    return-void
.end method

.method private updateMetadataForCurrentImage(I)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentImagePosition"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_temp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "ViewerFragment"

    if-eqz v1, :cond_0

    const-string p0, "updateMetadataForCurrentImage: return, draft image."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mMetadataListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/ExifUtil;->getExif(Ljava/lang/String;)Landroid/media/ExifInterface;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "updateMetadataForCurrentImage: return, ExifInterface is null."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v3, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;-><init>(Landroid/media/ExifInterface;)V

    new-instance v4, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;

    const v5, 0x7f0807a7

    iget-object v6, v3, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->originalTime:Ljava/lang/String;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/util/ExifUtil;->getFormattedDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v7}, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mMetadataListItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    invoke-static {v0, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v8

    invoke-static {v5, v8, v9}, Lcom/samsung/android/app/galaxyraw/util/Util;->getFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateMetadataForCurrentImage: IOException : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    :goto_0
    iget v6, v3, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->orientation:I

    const-string v8, "ImageLength"

    const-string v9, "x"

    const-string v10, "ImageWidth"

    if-eqz v6, :cond_3

    iget v6, v3, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->orientation:I

    const/16 v11, 0xb4

    if-ne v6, v11, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1, v8}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->getAttribute(Landroid/media/ExifInterface;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v10}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->getAttribute(Landroid/media/ExifInterface;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {v1, v10}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->getAttribute(Landroid/media/ExifInterface;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v8}, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->getAttribute(Landroid/media/ExifInterface;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "    "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageSize:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;

    const v5, 0x7f0807a8

    new-array v9, v4, [Ljava/lang/String;

    invoke-static {v0, v9}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/String;

    invoke-static {v0, v10}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v9, v0, v6}, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mMetadataListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getLocation()[D

    move-result-object v0

    aget-wide v5, v0, v4

    const-wide/16 v9, 0x0

    invoke-static {v5, v6, v9, v10}, Lcom/samsung/android/app/galaxyraw/util/Util;->doubleEquals(DD)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    aget-wide v11, v0, v5

    invoke-static {v11, v12, v9, v10}, Lcom/samsung/android/app/galaxyraw/util/Util;->doubleEquals(DD)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    const-string p1, "updateMetadataForCurrentImage: Current image does not have location tag."

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getSecMediaId()J

    move-result-wide v1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/util/DatabaseUtil;->getAddressTextFromCmhDb(JLandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v1, v0, v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-wide v1, v0, v5

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    new-instance v1, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;

    const v2, 0x7f0807a9

    invoke-direct {v1, v2, p1, v7, v7}, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mMetadataListItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->cancelGetAddressTask()V

    new-instance p1, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;

    invoke-direct {p1, p0, v7}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mGetAddressTask:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aget-wide v9, v0, v4

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v4

    aget-wide v9, v0, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v6, v5

    const/4 v0, 0x2

    aput-object v1, v6, v0

    invoke-virtual {p1, v2, v6}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v3, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->aperture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f12032d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v3, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->exposureTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v3, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->focalLength:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f120111

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v3, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->iso:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageMetadata:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->whiteBalance:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    iget-object v0, v3, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->whiteBalance:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f120330

    goto :goto_5

    :cond_7
    const v0, 0x7f12032f

    :goto_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f12032e

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    new-instance v0, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;

    const v1, 0x7f0807a6

    iget-object v2, v3, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->model:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/miniviewer/ExifTag;->make:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/util/ExifUtil;->getCameraName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1, v7}, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mMetadataListItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataDetailsPage:Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->notifyDataSetChanged()V

    return-void
.end method

.method private updateMetadataVisibility()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsImageZoomed:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->isLightRoomToastVisible()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    iget v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "_temp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->overlayLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private updateViewPagerOrientation(IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orientation",
            "needAnimation"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->topGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Guideline;->getId()I

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Guideline;->getId()I

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowWidth()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v3, 0x96

    invoke-virtual {p2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-float v0, p1

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$GAbeQJHd2cU9a72Ih_BJ0mSYLq0;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$GAbeQJHd2cU9a72Ih_BJ0mSYLq0;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    int-to-float v0, p1

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->setRotation(F)V

    :goto_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->requestLayout()V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->setClipChildren(Z)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerAdapter:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->onOrientationChanged(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerAdapter:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->notifyDataSetChanged()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateViewsForCurrentImage(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentImagePosition",
            "showViews"
        }
    .end annotation

    const/4 v0, 0x4

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->rawIndicator:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->overlayLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v1, "_temp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->captureProgressView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->captureProgressView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->overlayLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCurrSystemUIVisibility:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->captureProgressView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->captureProgressView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mOrientation:I

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsImageZoomed:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->isLightRoomToastVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->overlayLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iget v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCurrSystemUIVisibility:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsDelayedToastShowNeeded:Z

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->isLightRoomToastShowNeeded()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->showLightRoomHelpToast()V

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->rawIndicator:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string p1, ".dng"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public deleteCurrentImage()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsImageZoomed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerAdapter:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;->getPrimaryImageView()Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ScalableImageView;->fitToScreen()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->onImageZoomStateChanged(Z)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsFromDelete:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->setMarkedForDelete(Z)V

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->processBack()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    add-int/2addr p0, v1

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ViewerFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mOrientation:I

    return p0
.end method

.method public synthetic lambda$enableContentObserver$8$ViewerFragment(Landroid/database/ContentObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public synthetic lambda$initOrientation$10$ViewerFragment()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mOrientation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->onOrientationChanged(IZ)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->foreground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$m11Du1jNP8Dbh3DJmtKNMBSblhY;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$m11Du1jNP8Dbh3DJmtKNMBSblhY;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public synthetic lambda$initOrientation$9$ViewerFragment()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->foreground:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->foreground:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$onCreateView$0$ViewerFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->onLightRoomButtonClicked()V

    return-void
.end method

.method public synthetic lambda$onCreateView$1$ViewerFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->onDeleteButtonClicked()V

    return-void
.end method

.method public synthetic lambda$onCreateView$2$ViewerFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->processBack()V

    return-void
.end method

.method public synthetic lambda$onCreateView$3$ViewerFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->onShareButtonClicked()V

    return-void
.end method

.method public synthetic lambda$onCreateView$4$ViewerFragment(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->hideLightRoomHelpToast(Z)V

    return-void
.end method

.method public synthetic lambda$onCreateView$5$ViewerFragment(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x3e8

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->setClickBlock(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataDetailsPage:Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->show()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCreateView$7$ViewerFragment(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mOrientation:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsImageZoomed:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPagerAdapter;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$gBmaQYR2H0-0uWbgCdvsfY-Somo;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$gBmaQYR2H0-0uWbgCdvsfY-Somo;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$processBack$11$ViewerFragment()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateLatestMedia()V

    return-void
.end method

.method public synthetic lambda$processBack$12$ViewerFragment()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->updateThumbnail()V

    return-void
.end method

.method public synthetic lambda$startAttentionAnimation$13$ViewerFragment(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->lightRoomButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setTranslationY(F)V

    return-void
.end method

.method public synthetic lambda$updateViewPagerOrientation$14$ViewerFragment(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->rawIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->overlayLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    return-void
.end method

.method public launchLightRoom()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.adobe.lrmobile"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "0195"

    const-string v2, "0"

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->getSamsungAppsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "0193"

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.adobe.lrmobile.lrimport.openewithlrimport.AddToLrActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    iget v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/data/ImageViewPagerItem;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.app.galaxyraw.FileProvider"

    invoke-static {v1, v3, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x7f8

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ViewerFragment"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x7f8

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "com.adobe.lrmobile"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "ViewerFragment"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    check-cast p1, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const-string p3, "ViewerFragment"

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->topGuideline:Landroidx/constraintlayout/widget/Guideline;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->TOP_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->BOTTOM_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getOrientation()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->topOverlay:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700b8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->bottomOverlay:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->topOverlay:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowWidth()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->TOP_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_CHINA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->lightRoomButton:Landroid/widget/ImageButton;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->shareButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->lightRoomButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$9YNww_FRObkHotIfFJw1i_-Diyo;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$9YNww_FRObkHotIfFJw1i_-Diyo;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->deleteButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$nv5LUmiVEnnV9qKsVHKMSFDFzS0;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$nv5LUmiVEnnV9qKsVHKMSFDFzS0;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->backButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$SzYbdRz1TBT-Sg-Vl59jMg7b8iE;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$SzYbdRz1TBT-Sg-Vl59jMg7b8iE;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->shareButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$t9a1eMc6rO7D_3wUrF2XTym6A2g;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$t9a1eMc6rO7D_3wUrF2XTym6A2g;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->lrToastCloseButton:Landroid/widget/ImageButton;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$VZc6fh1cYDCQP20RPw8TLg5_vgM;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$VZc6fh1cYDCQP20RPw8TLg5_vgM;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$G0EVFBYYo2dWgf9U7oTbr6E1uHU;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$G0EVFBYYo2dWgf9U7oTbr6E1uHU;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->touchDelegate:Landroid/view/View;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$1AjPf_5DlAmhHeKCQm-FjCXhCVI;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/-$$Lambda$ViewerFragment$1AjPf_5DlAmhHeKCQm-FjCXhCVI;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCurrSystemUIVisibility:I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->viewerMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onImageTouch()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->hideLightRoomHelpToast(Z)V

    return-void
.end method

.method public onImageZoomStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isZoomed"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsImageZoomed:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->setClipChildren(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->updateMetadataVisibility()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKeyUp: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ViewerFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataDetailsPage:Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataDetailsPage:Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->hide()V

    return p2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->processBack()V

    return p2

    :cond_1
    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return p2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onOrientationChanged(IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "orientation",
            "needAnimation"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrientationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->lrToastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Guideline;->getId()I

    move-result v4

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    const/4 v4, -0x1

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->topOverlay:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowWidth()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lcom/samsung/android/app/galaxyraw/feature/FloatTag;->TOP_GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/feature/FloatTag;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/FloatTag;)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->bottomOverlay:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07004d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->overlayLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->overlayLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowWidth()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->shareButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_CHINA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v4

    const v5, 0x7f070063

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->deleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCurrentWindowHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v5, v5, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->topOverlay:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700b8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v5, v5, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->bottomOverlay:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v5, v5, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->overlayLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v5, v5, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->overlayLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0704b3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->shareButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_CHINA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v4

    const v5, 0x7f070026

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->deleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v5, v5, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    int-to-float v5, p1

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setRotation(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->lrToastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->lrToastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setRotation(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->overlayLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setRotation(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setRotation(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->rawIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setRotation(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->captureProgressView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setRotation(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setRotation(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->deleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->shareButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->topOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->bottomOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->updateViewPagerOrientation(IZ)V

    const/16 p2, -0x5a

    const v0, 0x7f0704a1

    const v1, 0x7f07028d

    const v3, 0x7f07002c

    const v4, 0x7f070062

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    if-eq p1, p2, :cond_5

    if-eqz p1, :cond_4

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setTranslationY(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->backButton:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->viewerMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result p2

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v6, v6, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getWidth()I

    move-result v6

    sub-int/2addr p2, v6

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr p2, v6

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->rawIndicator:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->viewerMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v6, v6, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->rawIndicator:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v7, v7, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->rawIndicator:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr p2, v6

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr p2, v6

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->rawIndicator:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->viewerMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v6, v6, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->rawIndicator:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v7, v7, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->rawIndicator:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr p2, v6

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr p2, v6

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setY(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->viewerMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v6, v6, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v7, v7, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr p2, v6

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr p2, v3

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->viewerMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v6, v6, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr p2, v3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr p2, v3

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setY(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->viewerMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result p2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    sub-int/2addr p2, v3

    neg-int p2, p2

    int-to-float p2, p2

    div-float/2addr p2, v5

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->captureProgressView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->captureProgressView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->viewerMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->captureProgressView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p2, v5

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setY(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->lrToastLayout:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->viewerMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->lrToastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p2, v5

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->topOverlay:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto/16 :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setTranslationX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setTranslationY(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->rawIndicator:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->rawIndicator:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->captureProgressView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->captureProgressView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->lrToastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto/16 :goto_1

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setTranslationX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->backButton:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->viewerMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr p2, v6

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setY(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->rawIndicator:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->rawIndicator:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setY(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v6, v6, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr p2, v3

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->buttonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr p2, v3

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setY(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->viewerMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v3, v3, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v4, v4, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr p2, v3

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->captureProgressView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->viewerMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr p2, v1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->captureProgressView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setX(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->captureProgressView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->viewerMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->captureProgressView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p2, v5

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setY(F)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p1, p1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->lrToastLayout:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object p2, p2, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->lrToastLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->viewerMain:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    div-float/2addr p2, v5

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->topOverlay:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->onImageZoomStateChanged(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "ViewerFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsImageZoomed:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->enableContentObserver(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewBinding:Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->imageViewPager:Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ImageViewPager;->clearOnPageChangeListeners()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->DELETE_IMAGE_FROM_MINIVIEWER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->dismissCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCurrSystemUIVisibility:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const-string p0, "001"

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "ViewerFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mImageViewPagerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->isRecreating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->releaseClickBlock()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->enableContentObserver(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->createMetadataAdapter()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->initializeViewPager()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->isLightRoomToastShowNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->showLightRoomHelpToast()V

    :cond_1
    const-string p0, "003"

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->processBack()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->createViewPagerAdapter()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->initOrientation()V

    return-void
.end method

.method public onUpdateViewVisibilityRequested(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSingleClicked"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mViewPagerPosition:I

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->updateViewsForCurrentImage(IZ)V

    return-void
.end method

.method public releaseClickBlock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->mIsClickAvailable:Z

    return-void
.end method
