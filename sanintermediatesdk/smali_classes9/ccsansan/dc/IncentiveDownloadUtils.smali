.class public Lccsansan/dc/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static IncentiveDownloadUtils:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS mads_ads_cache (_id INTEGER PRIMARY KEY AUTOINCREMENT,pos_id TEXT,play_queue TEXT,position INTEGER )"

.field public static getDownloadingList:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS offline_urls (_id INTEGER PRIMARY KEY AUTOINCREMENT,ad_id TEXT,creative_id TEXT,recv_pkg_name TEXT,timestamp LONG,track_end_date LONG,offline_track_urls TEXT )"

.field public static unifiedDownload:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS mads_ad (_id TEXT PRIMARY KEY,ad_id TEXT,placement_id TEXT,creative_id TEXT,creative_ver INTEGER,show_count INTEGER,click_count INTEGER,show_count_today TEXT,show_time LONG,source TEXT,reid TEXT,json_data TEXT )"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method
