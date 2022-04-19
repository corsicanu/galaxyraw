.class Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;
.super Ljava/lang/Object;
.source "LastContentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/LastContentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentUriSet"
.end annotation


# instance fields
.field mContentUriForReading:Landroid/net/Uri;

.field mContentUriForWriting:Landroid/net/Uri;

.field mRawContentUriForReading:Landroid/net/Uri;

.field mRawContentUriForWriting:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/LastContentData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->this$0:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->mContentUriForReading:Landroid/net/Uri;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->mRawContentUriForReading:Landroid/net/Uri;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->mContentUriForWriting:Landroid/net/Uri;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->mRawContentUriForWriting:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/LastContentData;Lcom/samsung/android/app/galaxyraw/engine/LastContentData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;-><init>(Lcom/samsung/android/app/galaxyraw/engine/LastContentData;)V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->mContentUriForReading:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->mRawContentUriForReading:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->mContentUriForWriting:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/LastContentData$ContentUriSet;->mRawContentUriForWriting:Landroid/net/Uri;

    return-void
.end method
