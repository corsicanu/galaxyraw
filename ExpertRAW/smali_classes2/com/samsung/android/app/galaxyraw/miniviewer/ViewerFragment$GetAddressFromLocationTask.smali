.class Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;
.super Landroid/os/AsyncTask;
.source "ViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAddressFromLocationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mItem:Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;-><init>(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "params"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    const-string v0, "ViewerFragment"

    const-string v1, "GetAddressFromLocationTask - doInBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    new-instance v4, Landroid/location/Geocoder;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/util/ExifUtil;->getAddressFromLocation(DDLandroid/location/Geocoder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object p1, p1, v1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;->mItem:Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "address"
        }
    .end annotation

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAddressFromLocationTask - onPostExecute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;->mItem:Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/data/MetadataListItem;->setHeading(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment$GetAddressFromLocationTask;->this$0:Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->access$600(Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;)Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/databinding/ViewerBinding;->metadataDetailsPage:Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/miniviewer/MetadataDetailsPage;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
