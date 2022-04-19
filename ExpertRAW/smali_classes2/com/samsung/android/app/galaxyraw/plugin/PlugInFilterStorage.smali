.class public Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;
.super Ljava/lang/Object;
.source "PlugInFilterStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.filterprovider/filters"

.field private static final BASE_URI:Landroid/net/Uri;

.field private static final FILTER_ORDER:Ljava/lang/String; = "filter_order"

.field private static final INDEX_FILENAME:I = 0x2

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_NAME:I = 0x1

.field private static final INDEX_PACKAGE_NAME:I = 0xa

.field private static final TAG:Ljava/lang/String; = "PlugInFilterStorage"

.field private static mFilterList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mLock:Ljava/lang/Object;

    const-string v0, "content://com.samsung.android.provider.filterprovider/filters"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->BASE_URI:Landroid/net/Uri;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPlugInFilters(Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->getFilterIndex()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static clear()V
    .locals 2

    const-string v0, "PlugInFilterStorage"

    const-string v1, "clear PlugInFilterLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getFilterForSet(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "id",
            "isFilterLoaded"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlugInFilterStorage"

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->getPlugInFilter(I)Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->getLibName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_6

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->BASE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "filter_order"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p0, :cond_5

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    const/4 p2, 0x0

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-ne p1, p2, :cond_3

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0xa

    :try_start_2
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p2, :cond_2

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object p1, v2

    :goto_0
    if-eqz p0, :cond_4

    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p2
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-object p0, v2

    goto :goto_5

    :cond_5
    :goto_2
    move-object p1, v2

    move-object p2, p1

    :goto_3
    if-eqz p0, :cond_6

    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    move-object p0, p2

    goto :goto_5

    :cond_6
    :goto_4
    move-object p0, p2

    goto :goto_6

    :catch_2
    move-object p0, v2

    move-object p1, p0

    :goto_5
    const-string p2, "getFilterForSet : Cursor failed."

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    if-eqz p1, :cond_7

    if-eqz p0, :cond_7

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v2, 0x2c

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getFilterForSet = filter file name : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v2
.end method

.method public static getFilterNameByFilterId(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "filterId",
            "isFilterLoaded"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    sget-object p2, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mLock:Ljava/lang/Object;

    monitor-enter p2

    move-object p0, v1

    :goto_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->getDBId()I

    move-result v3

    if-ne p1, v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->getFilterName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    monitor-exit p2

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    monitor-exit p2

    return-object v1

    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->BASE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "filter_order"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz p0, :cond_6

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_6

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-object p2, v1

    :cond_3
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne p1, v2, :cond_4

    const/4 p2, 0x1

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v2, :cond_3

    goto :goto_3

    :catchall_1
    move-exception p1

    if-eqz p0, :cond_5

    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p1

    :cond_6
    move-object p2, v1

    :goto_3
    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_7
    move-object p0, p2

    :goto_4
    return-object p0

    :catch_1
    const-string p0, "PlugInFilterStorage"

    const-string p1, "getFilterNameByFilterId : Cursor failed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getFilterPackageNameByFilterId(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "id",
            "isFilterLoaded"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    sget-object p2, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mLock:Ljava/lang/Object;

    monitor-enter p2

    move-object p0, v1

    :goto_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->getDBId()I

    move-result v3

    if-ne p1, v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    monitor-exit p2

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    monitor-exit p2

    return-object v1

    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->BASE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "filter_order"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz p0, :cond_6

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_6

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_3
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/16 p1, 0xa

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_3

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p2, :cond_3

    goto :goto_3

    :catchall_1
    move-exception p1

    if-eqz p0, :cond_5

    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p1

    :cond_6
    :goto_3
    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    const-string p0, "PlugInFilterStorage"

    const-string p1, "getFilterPackageNameByFilterId : Cursor failed."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    move-object p0, v1

    :goto_5
    return-object p0
.end method

.method public static getPlugInFilter(I)Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->getDBId()I

    move-result v3

    if-ne v3, p0, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getPlugInFilterList()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isPreloadFilter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "libName"
        }
    .end annotation

    const-string v0, "com.samsung.android.provider.filterprovider"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.linecorp.aillis.filter.libdelicious.so"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.linecorp.b612.filter.libriddle.so"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.pinguo.camera360filter.libgold.so"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.pinguo.camera360filter.libsweet.so"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.thundersoft.ucamera.filter.libnostalgia.so"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.thundersoft.ucamera.filter.librose.so"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.candycamera.android.filter.libmonogram.so"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.candycamera.android.filter.libeveryday.so"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.linecorp.aillis.filter.libsunrise.so"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.thundersoft.ucamera.filter.libmaple.so"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.pinguo.camera360filter.libmemory.so"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.candycamera.android.filter.libcookiencream.so"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isUninstalledFilter(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filterId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    sget-object v3, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;->getDBId()I

    move-result v3

    if-ne v3, p0, :cond_0

    move p0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_1
    if-nez p0, :cond_2

    move v1, v4

    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static updateFilterIndex(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->getPlugInFilter(I)Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage$PlugInFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v2, v4

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->mFilterList:Landroid/util/SparseArray;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
