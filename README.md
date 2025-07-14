# Music Organizer Web App

A web-based music organizer with:

- Artist/Album/Track sorting
- Metadata normalization via AcoustID & MusicBrainz
- Web GUI with progress bar
- Easy LXC or Codespaces deployment

## Install in LXC

```bash
git clone https://github.com/yourusername/music-organizer.git
cd music-organizer
chmod +x setup_music_organizer.sh
./setup_music_organizer.sh
```

## Use in Codespaces

Open in Codespaces and run:

```bash
python3 web_organizer.py
```

## Access

Visit: `http://<LXC-IP>:5000`

## License

MIT License
