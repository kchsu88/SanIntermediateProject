.class public abstract Lccsansan/d/getDownloadingList;
.super Lccsanandroid/content/res/ResourcesImpl;
.source ""


# instance fields
.field addDownloadListener:Lccsanandroid/content/res/ResourcesImpl;


# direct methods
.method public constructor <init>(Lccsanandroid/content/res/AssetManager;Lccsanandroid/util/DisplayMetrics;Lccsanandroid/content/res/Configuration;Lccsanandroid/view/DisplayAdjustments;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroid/content/res/ResourcesImpl;-><init>(Lccsanandroid/content/res/AssetManager;Lccsanandroid/util/DisplayMetrics;Lccsanandroid/content/res/Configuration;Lccsanandroid/view/DisplayAdjustments;)V

    .line 29
    return-void
.end method


# virtual methods
.method abstract addDownloadListener(ILjava/lang/String;)Lccsanandroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation
.end method
